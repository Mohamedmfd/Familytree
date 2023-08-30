from __init__ import Base
from sqlalchemy import Column, Integer, ForeignKey
from sqlalchemy.orm import relationship

class Parenthood(Base):
    __tablename__ = 'parenthood'

    id = Column(Integer, primary_key=True)
    child = Column(Integer, ForeignKey('contact.id'))
    father = Column(Integer, ForeignKey('contact.id'))
    mother = Column(Integer, ForeignKey('contact.id'))

    # Establishing the foreign key relationships
    child_rel = relationship('Contact', foreign_keys=[child])
    father_rel = relationship('Contact', foreign_keys=[father])
    mother_rel = relationship('Contact', foreign_keys=[mother])