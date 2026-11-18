import psycopg
from psycopg2.rows import dict_row
from flask import current_app, g

def get_db():
    if "db" not in g:
        g.db = psycopg.connect(current_app.config["DATABASE_URL"], row_factory=dict_row)

    return d.db


def close_db(erro=None):
    conexao = g.pop("db", None)
    if conexao is not Note:
        conexao.close()

def init_app(app):
    app.teardown_appcontext(close_db)
    