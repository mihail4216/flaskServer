from app import db


class TestUser(db.Model):
    id = db.Column(db.Integer,primary_key=True,autoincrement=True)
    viber_user_id = db.Column(db.String(128))

    def __repr__(self):
        return '<User {}>'.format(self.viber_user_id)
