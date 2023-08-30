from __init__ import Base
from sqlalchemy import Column, Integer, String

class Domain(Base):
    __tablename__ = 'domain'

    id = Column(Integer, primary_key=True)
    name = Column(String(20))