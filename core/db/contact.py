from __init__ import Base
from sqlalchemy import Column, Integer, String, Date, ForeignKey
from sqlalchemy.orm import relationship

class Contact(Base):
    __tablename__ = 'contact'

    id = Column(Integer, primary_key=True)
    first_name = Column(String(25))
    last_name = Column(String(25))
    gender = Column(String(1))
    date_birth = Column(Date)
    height = Column(Integer)
    birth_country = Column(Integer, ForeignKey('country.id'))
    address = Column(String(100))
    phone_code = Column(Integer, ForeignKey('country.id'))
    phone_number = Column(Integer)
    blood_type = Column(String(3))
    origin = Column(Integer, ForeignKey('country.id'))
    photo = Column(String(200))

    birth_country_rel = relationship('Country', foreign_keys=[birth_country])
    phone_code_rel = relationship('Country', foreign_keys=[phone_code])
    origin_rel = relationship('Country', foreign_keys=[origin])