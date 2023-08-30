from __init__ import Base
from sqlalchemy import Column, String, Integer, ForeignKey
from sqlalchemy.orm import relationship

class Profession(Base):
    __tablename__ = 'profession'

    id = Column(Integer, primary_key=True)
    title = Column(String(30))
    company = Column(String(30))
    start_date = Column(Integer)
    end_date = Column(Integer)
    domain = Column(Integer, ForeignKey('domain.id'))
    contact_id = Column(Integer, ForeignKey('contact.id'))

    # Establishing the foreign key relationships
    domain_rel = relationship('Domain', foreign_keys=[domain])
    contact_rel = relationship('Contact', foreign_keys=[contact_id])