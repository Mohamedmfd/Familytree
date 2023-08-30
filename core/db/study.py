from __init__ import Base
from sqlalchemy import Column, String, Integer, ForeignKey
from sqlalchemy.orm import relationship

class Study(Base):
    __tablename__ = 'study'

    id = Column(Integer, primary_key=True)
    degree = Column(String(25))
    establishment = Column(String(50))
    start_date = Column(Integer)
    end_date = Column(Integer)
    domain = Column(Integer, ForeignKey('domain.id'))
    contact_id = Column(Integer, ForeignKey('contact.id'))

    # Establishing the foreign key relationships
    domain_rel = relationship('Domain', foreign_keys=[domain])
    contact_rel = relationship('Contact', foreign_keys=[contact_id])