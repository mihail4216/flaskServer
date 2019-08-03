from venv import logger

from flask import Flask, request, Response, render_template
from viberbot.api.messages import TextMessage
from viberbot.api.viber_requests import ViberMessageRequest, ViberSubscribedRequest, ViberFailedRequest

from viber import viber

app = Flask(__name__)


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
    elif isinstance(viber_request, ViberSubscribedRequest):
        viber.send_messages(viber_request.get_user.id, [
            TextMessage(text="thanks for subscribing!")
        ])
    elif isinstance(viber_request, ViberFailedRequest):
        logger.warn("client failed receiving message. failure: {0}".format(viber_request))

    return Response(status=200)

    # return 'Hello World!'
    # return Response(status=200)


form_auth = render_template('login_form.html', name=None)
send_message_page = render_template('login_form.html', name=None)


def send_message_in_viber():
    return viber.get_account_info()


@app.route('/admin', methods=['POST', 'GET'])
def admin():
    if request.method == "GET":
        return send_message_page
    elif request.method == "POST":
        return send_message_in_viber()
    pass


if __name__ == '__main__':
    context = ('server.crt', 'server.key')
    app.run(debug=False, port=33507)
    # flask run -h 192.168.1.65  # lauch local server
    # app.run(host='0.0.0.0', port=443, debug=False, ssl_context=context)
    # app.run()
