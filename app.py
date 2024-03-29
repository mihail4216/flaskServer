from venv import logger

from flask import Flask, request, Response, render_template
from flask_heroku import Heroku
from viberbot.api.messages import TextMessage
from viberbot.api.viber_requests import ViberMessageRequest, ViberSubscribedRequest, ViberFailedRequest
from flask_sqlalchemy import SQLAlchemy

from viber import viber

app = Flask(__name__)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
heroku = Heroku(app)
db = SQLAlchemy(app)
from models import TestUser


@app.route('/', methods=['POST', 'GET'])
@app.route('/wizl_test', methods=['POST', 'GET'])
def wizl_test():
    logger.debug("received request. post data: {0}".format(request.get_data()))
    if not viber.verify_signature(request.get_data(), request.headers.get('X-Viber-Content-Signature')):
        return Response(status=403)

        # this library supplies a simple way to receive a request object
    viber_request = viber.parse_request(request.get_data())

    if isinstance(viber_request, ViberMessageRequest):
        message = viber_request.message
        # lets echo back
        viber.send_messages(viber_request.sender.id, [
            message
        ])
        user = db.session.query(TestUser).filter_by(viber_user_id=viber_request.sender.id).first()

        try:
            viber_request.sender.id == user.viber_user_id
        except Exception:
            db.session.add(TestUser(viber_request.sender.id))
            db.session.commit()
    elif isinstance(viber_request, ViberSubscribedRequest):
        viber.send_messages(viber_request.get_user.id, [
            TextMessage(text="thanks for subscribing!")
        ])
    elif isinstance(viber_request, ViberFailedRequest):
        logger.warn("client failed receiving message. failure: {0}".format(viber_request))

    return Response(status=200)


def send_message_in_viber():
    # return request.get_data()
    all_users = db.session.query(TestUser)
    for current_user in all_users:
        viber.send_messages(current_user.viber_user_id, TextMessage(text=f"{request.form['text']}"))
    return f"Sending message: {request.form['text']}"
    # return viber.parse_request(request.get_data()).user_id


@app.route('/admin', methods=['POST', 'GET'])
def admin():
    if request.method == "GET":
        return render_template('send_form.html', name="None")

    elif request.method == "POST":
        return send_message_in_viber()


if __name__ == '__main__':
    # context = ('server.crt', 'server.key')
    app.run(debug=False, port=33507)
    # flask run -h 192.168.1.65  # lauch local server
    # app.run(host='0.0.0.0', port=443, debug=False, ssl_context=context)
    # app.run()
