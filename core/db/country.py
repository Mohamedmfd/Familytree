from __init__ import Base
from sqlalchemy import Column, Integer, String

class Country(Base):
    __tablename__ = 'country'

    id = Column(Integer, primary_key=True)
    name = Column(String(15))
    code = Column(Integer)