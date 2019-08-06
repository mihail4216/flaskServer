from app import db


class TestUser(db.Model):
    __tablename__ = "usertest"
    id = db.Column(db.Integer, primary_key=True)
    viber_user_id = db.Column(db.String(128), unique=True)

    def __init__(self, data):
        self.viber_user_id = data

    def __repr__(self):
        return '<User {}>'.format(self.viber_user_id)
