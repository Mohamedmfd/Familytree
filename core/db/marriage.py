from __init__ import Base
from sqlalchemy import Column, Integer, ForeignKey
from sqlalchemy.orm import relationship

class Marriage(Base):
    __tablename__ = 'marriage'

    id = Column(Integer, primary_key=True)
    husband = Column(Integer, ForeignKey('contact.id'))
    wife = Column(Integer, ForeignKey('contact.id'))
    date = Column(Integer)

    # Establishing the foreign key relationships
    husband_rel = relationship('Contact', foreign_keys=[husband])
    wife_rel = relationship('Contact', foreign_keys=[wife])