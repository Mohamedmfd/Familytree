CREATE TABLE IF NOT EXISTS country (
    id SERIAL,
    name VARCHAR(15),
    code INTEGER,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS domain (
    id SERIAL,
    name VARCHAR(20),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS contact (
    id SERIAL,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    gender VARCHAR(1),
    date_birth DATE,
    height INTEGER,
    birth_country INTEGER,
    address VARCHAR(100),
    phone_code INTEGER,
    phone_number INTEGER,
    blood_type VARCHAR(3),
    origin INTEGER,
    photo VARCHAR(200),
    PRIMARY KEY(id),
    CONSTRAINT fk_birth_country
      FOREIGN KEY(birth_country) 
	      REFERENCES country(id),
    CONSTRAINT fk_phone_code
      FOREIGN KEY(phone_code) 
	      REFERENCES country(id),
    CONSTRAINT fk_origin
      FOREIGN KEY(origin) 
	      REFERENCES country(id) 
);

CREATE TABLE IF NOT EXISTS parenthood (
    id SERIAL,
    child INTEGER,
    father INTEGER,
    mother INTEGER,
    PRIMARY KEY(id),
    CONSTRAINT fk_child
      FOREIGN KEY(child) 
	      REFERENCES contact(id),
    CONSTRAINT fk_father
      FOREIGN KEY(father) 
	      REFERENCES contact(id),
    CONSTRAINT fk_mother
      FOREIGN KEY(mother) 
	      REFERENCES contact(id)
);

CREATE TABLE IF NOT EXISTS marriage (
    id SERIAL,
    husband INTEGER,
    wife INTEGER,
    date INTEGER,
    PRIMARY KEY(id),
    CONSTRAINT fk_husband
      FOREIGN KEY(husband) 
	      REFERENCES contact(id),
    CONSTRAINT fk_wife
      FOREIGN KEY(wife) 
	      REFERENCES contact(id)
);

CREATE TABLE IF NOT EXISTS profession (
    id SERIAL,
    title VARCHAR(30),
    company VARCHAR(30),
    start_date INTEGER,
    end_date INTEGER,
    domain INTEGER,
    contact_id INTEGER,
    PRIMARY KEY(id),
    CONSTRAINT fk_domain_p
      FOREIGN KEY(domain) 
	      REFERENCES domain(id),
    CONSTRAINT fk_contact_id_p
      FOREIGN KEY(contact_id) 
	      REFERENCES contact(id)
);

CREATE TABLE IF NOT EXISTS study (
    id SERIAL,
    degree VARCHAR(25),
    establishment VARCHAR(50),
    start_date INTEGER,
    end_date INTEGER,
    domain INTEGER,
    contact_id INTEGER,
    PRIMARY KEY(id),
    CONSTRAINT fk_domain_s
      FOREIGN KEY(domain) 
	      REFERENCES domain(id),
    CONSTRAINT fk_contact_id_s
      FOREIGN KEY(contact_id) 
	      REFERENCES contact(id)
);