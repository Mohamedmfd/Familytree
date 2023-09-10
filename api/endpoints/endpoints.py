from flask import Flask, jsonify
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from core.db.domain import Domain
# from core.db.country import Country
# from core.db.contact import Contact
# from core.db.marriage import Marriage
# from core.db.parenthood import Parenthood
# from core.db.study import Study
# from core.db.profession import Profession

app = Flask(__name__)

engine = create_engine('postgresql://postgres:password@localhost/familytree')
Session = sessionmaker(bind=engine)
session = Session()

@app.route('/domains')
def get_domains():
    domains = session.query(Domain).all()
    domains_data = [{"id": d.id, "name": d.name} for d in domains]
    return jsonify(domains_data)
