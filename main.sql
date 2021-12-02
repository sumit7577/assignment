CREATE TABLE company_branch
(id SERIAL CHECK(id>0),
address VARCHAR NOT NULL,
county VARCHAR,
PRIMARY KEY(id)
);


CREATE TABLE phone_number
(id SERIAL CHECK(id>0),
company_id INTEGER NOT NULL,
number INTEGER NOT NULL UNIQUE,
PRIMARY KEY(id),
FOREIGN KEY(company_id) REFERENCES company_branch MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE);



CREATE TABLE car_detail
(id SERIAL CHECK(id>0) PRIMARY KEY,
car_name VARCHAR NOT NULL,
company_id INTEGER NOT NULL,
vehical_class VARCHAR NOT NULL,
registration_number INTEGER UNIQUE NOT NULL,
model_id INTEGER NOT NULL UNIQUE,
manufacturer VARCHAR NOT NULL,
engine_size VARCHAR,
capacity INTEGER,
colour VARCHAR NOT NULL,
current_milage INTEGER,
status VARCHAR NOT NULL DEFAULT('available'),
assigned BOOLEAN DEFAULT('0'),
date_acquired timestamp,
date_due timestamp);


CREATE TABLE assign_car
(id SERIAL CHECK(id>0) PRIMARY KEY,
car_id INTEGER NOT NULL UNIQUE,
branch_id INTEGER NOT NULL,
FOREIGN KEY(car_id) REFERENCES car_detail(id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE,
FOREIGN KEY(branch_id) REFERENCES company_branch(id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE);


CREATE TABLE client_hire
(id SERIAL CHECK(id>0) PRIMARY KEY,
customer_number INTEGER UNIQUE NOT NULL,
first_name VARCHAR NOT NULL,
surname VARCHAR NOT NULL,
hire_number INTEGER NOT NULL,
home_address VARCHAR NOT NULL,
phone_number INTEGER NOT NULL,
date_of_birth timestamp,
date_hired timestamp,
driving_license_number INTEGER NOT NULL,
rent_period INTEGER NOT NULL,
car_id INTEGER NOT NULL,
model_id INTEGER UNIQUE NOT NULL,
staff_id INTEGER NOT NULL,
FOREIGN KEY(car_id) REFERENCES car_detail(id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE,
FOREIGN KEY(staff_id) REFERENCES staff(id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE,
FOREIGN KEY(model_id) REFERENCES car_detail(model_id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE);


CREATE TABLE staff
(id SERIAL CHECK(id>0) PRIMARY KEY,
company_id INTEGER NOT NULL,
staff_number INTEGER UNIQUE NOT NULL,
firstname VARCHAR NOT NULL,
surname VARCHAR NOT NULL,
home_address VARCHAR NOT NULL,
phone_number VARCHAR NOT NULL,
date_of_birth timestamp,
date_joined_the_company timestamp,
job_title VARCHAR NOT NULL,
salary INTEGER,
FOREIGN KEY(company_id) REFERENCES company_branch(id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE);





