"""This is the company branch table where each branch that is registered to gogogo company details is stored"

CREATE TABLE company_branch
(id SERIAL CHECK(id>0),
address VARCHAR NOT NULL,
county VARCHAR,
PRIMARY KEY(id)
);


"""A branch can have multiple phone number this table has foreign key relatinoship with company brach table so that we can
referance multiple number to same branch"""

CREATE TABLE phone_number
(id SERIAL CHECK(id>0),
company_id INTEGER NOT NULL,
number INTEGER NOT NULL UNIQUE,
PRIMARY KEY(id),
FOREIGN KEY(company_id) REFERENCES company_branch MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE);


"""The car details table store the all car data that is available currently the model id is used to uniquely separete the car with same name"""

CREATE TABLE car_detail
(id SERIAL CHECK(id>0) PRIMARY KEY,
car_name VARCHAR NOT NULL,
company_id INTEGER NOT NULL,
vehical_class VARCHAR NOT NULL,
registration_number INTEGER UNIQUE NOT NULL,
model_name VARCHAR NOT NULL UNIQUE,
manufacturer VARCHAR NOT NULL,
engine_size VARCHAR,
capacity INTEGER,
colour VARCHAR NOT NULL,
current_milage INTEGER,
status VARCHAR NOT NULL DEFAULT('available'),
assigned BOOLEAN DEFAULT('0'),
date_acquired timestamp,
date_due timestamp);

"""the assign car table is used to assign the car to specific branch and each car can be assigned to only 1 branch at a time after assigning the car to specific 
brach the car details is changed to assigned true"""

CREATE TABLE assign_car
(id SERIAL CHECK(id>0) PRIMARY KEY,
car_id INTEGER NOT NULL UNIQUE,
branch_id INTEGER NOT NULL,
FOREIGN KEY(car_id) REFERENCES car_detail(id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE,
FOREIGN KEY(branch_id) REFERENCES company_branch(id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE);


"""the client hire table is used to store the details of the customer who hired the car and model id specify which car had been hired by customer
because a specific car name have multiple cars so model id is used to uniquley identify them"""

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
car_id INTEGER UNIQUE NOT NULL,
staff_id INTEGER NOT NULL,
FOREIGN KEY(car_id) REFERENCES car_detail(id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE,
FOREIGN KEY(staff_id) REFERENCES staff(id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE CASCADE);


""""The staff table is used to store all the staff that is currently working in gogogo comapny and it store the details of that staff along in which branch currently he is wokring"""

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





