import os

basedir = os.path.abspath(os.path.dirname(__file__))

database_url_production = 'postgres://jxxssodxqucumh:1417fe97c5d3a1b0b2dcfc2527478c13e1560a460e883b327f49652aad8d3e0d@ec2-54-221' \
               '-215-228.compute-1.amazonaws.com:5432/da7bhuf27tuu2i '

database_url_test = 'postgres://admin_a@localhost'

class Config(object):
    # ...
    SQLALCHEMY_DATABASE_URI = os.environ.get(database_url_production)
    SQLALCHEMY_TRACK_MODIFICATIONS = False
