CREATE TABLE IF NOT EXISTS contact (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    date_birth DATETIME,
    height INTEGER,
    birth_country INTEGER FOREIGN KEY,
    address VARCHAR(100),
    phone_code INTEGER FOREIGN KEY,
    phone_number INTEGER,
    blood_type VARCHAR(3),
    origin INTEGER FOREIGN KEY,
    photo VARCHAR(200)
)

CREATE TABLE IF NOT EXISTS parenthood (
    id INTEGER PRIMARY KEY,
    child INTEGER FOREIGN KEY,
    father INTEGER FOREIGN KEY,
    mother INTEGER FOREIGN KEY
)

CREATE TABLE IF NOT EXISTS marriage (
    id INTEGER PRIMARY KEY,
    husband INTEGER FOREIGN KEY,
    wife INTEGER FOREIGN KEY,
    date DATETIME
)

CREATE TABLE IF NOT EXISTS profession (
    id INTEGER PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    company VARCHAR(30),
    start_date DATETIME,
    end_date DATETIME,
    domain INTEGER FOREIGN KEY,
    contact_id INTEGER FOREIGN KEY
)

CREATE TABLE IF NOT EXISTS study (
    id INTEGER PRIMARY KEY,
    degree VARCHAR(25) NOT NULL,
    establishment VARCHAR(50),
    start_date DATETIME,
    end_date DATETIME,
    domain INTEGER FOREIGN KEY,
    contact_id INTEGER FOREIGN KEY
)

CREATE TABLE IF NOT EXISTS country (
    id INTEGER PRIMARY KEY,
    name VARCHAR(15),
    code INTEGER
)

CREATE TABLE IF NOT EXISTS domain (
    Id INTEGER PRIMARY KEY,
    name VARCHAR(20)
)