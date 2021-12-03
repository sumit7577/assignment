INSERT INTO company_branch (address,county) VALUES ('New York','NY');
INSERT INTO company_branch (address,county) VALUES ('Pacoima','CA');
INSERT INTO company_branch (address,county) VALUES ('Cocoa','FL');
INSERT INTO company_branch (address,county) VALUES ('Nuevo','CA');
INSERT INTO company_branch (address,county) VALUES ('San Francisco','CA');
INSERT INTO company_branch (address,county) VALUES ('Pittsburgh','PA');
INSERT INTO company_branch (address,county) VALUES ('Wrightwood','CA');
INSERT INTO company_branch (address,county) VALUES ('Mcminnville','OR');


#example number 2 dont push the example data

INSERT INTO phone_number (company_id,number) VALUES (1,19285647);
INSERT INTO phone_number (company_id,number) VALUES (2,+140592335);
INSERT INTO phone_number (company_id,number) VALUES (3,+162760184);
INSERT INTO phone_number (company_id,number) VALUES (4,+199537819);
INSERT INTO phone_number (company_id,number) VALUES (5,+162193403);
INSERT INTO phone_number (company_id,number) VALUES (6,+133743115);
INSERT INTO phone_number (company_id,number) VALUES (7,+130667522);
INSERT INTO phone_number (company_id,number) VALUES (8,+124946821);
INSERT INTO phone_number (company_id,number) VALUES (1,+171459799);
INSERT INTO phone_number (company_id,number) VALUES (2,+159288776);

INSERT INTO car_detail (car_name,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('Maruti Swift','C',66564428,'LXI','1197 cc',5,'Solid Fire Red',23,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');

INSERT INTO car_detail (car_name,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('Hyundai i20','C',78526389,'Sportz','1493 cc',5,'Starry Night',21,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');

INSERT INTO car_detail (car_name,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('Skoda Kushaq','B',89625742,'1.0 TSI Active','999 cc',5,'Honey Orange',17,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');

INSERT INTO car_detail (car_name,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('Hyundai Alcazar','B',68572418,'Prestige 7-Seater','1999 cc',7,'Typhoon Silver',14,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');

INSERT INTO car_detail (car_name,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('Hyundai Creta','B',55469824,'SX Opt Turbo Dualtone','1353 cc',5,'Typhoon Silver',16,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');

INSERT INTO car_detail (car_name,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('Mercedes-Benz GLA','A',75412369,'220d','1950 cc',5,'Polar White',18,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');

INSERT INTO car_detail (car_name,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('Audi Q5','A',74125896,'Technology','1984 cc',5,'Floret Silver Metallicd',13,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');

INSERT INTO car_detail (car_name,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('BMW X5','A',75369512,'xDrive 30d Sport','2993 cc',5,'Mineral White',13,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');

INSERT INTO car_detail (car_name,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('Aston Martin DBX','A',92455542,'V8','3982 cc',5,'Red',7,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');

INSERT INTO car_detail (car_name,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('Lamborghini Aventador','A',98002548,'SVJ','6498 cc',2,'Verde Mantis',7,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');



*here company_id refers to id of company_branch table so be sure the id should exists in company_branch tables
*vehical class should be A,B,C
*capacity refers to how many people can ride
*status should be avialble,hired,broken DEFAULT is available 
*assigned is boolean value if its assigned to some comapny_brach or NOT
*date acquired when the car comes to the comapny
*date due left this just add random DATABASE


INSERT INTO assign_car (car_id,branch_id) VALUES (1,1);
INSERT INTO assign_car (car_id,branch_id) VALUES (1,1);
INSERT INTO assign_car (car_id,branch_id) VALUES (1,1);
INSERT INTO assign_car (car_id,branch_id) VALUES (1,1);
INSERT INTO assign_car (car_id,branch_id) VALUES (1,1);
INSERT INTO assign_car (car_id,branch_id) VALUES (1,1);
INSERT INTO assign_car (car_id,branch_id) VALUES (1,1);
INSERT INTO assign_car (car_id,branch_id) VALUES (1,1);
INSERT INTO assign_car (car_id,branch_id) VALUES (1,1);
INSERT INTO assign_car (car_id,branch_id) VALUES (1,1);

*here car id and branch id both refers to table car_detail and company_branch table id so be sure to that id number exists in bot table


//same applies to all tables

INSERT INTO client_hire (customer_number,first_name,surname,hire_number,home_address,phone_number,date_of_birth,date_hired,driving_license_number,rent_period,car_id,staff_id) VALUES (1,'Chester','Henderson',1,'51 N Maine St Baldwin Park, CA 91706, USA',+15452721638,'1971-01-09','2021-10-15','M1577406','12 Month',1,1);

INSERT INTO client_hire (customer_number,first_name,surname,hire_number,home_address,phone_number,date_of_birth,date_hired,driving_license_number,rent_period,car_id,staff_id) VALUES (2,'Eugene','Simmons',2,'299 Virginia Way Laguna Beach, CA 92651, USA',+15188924310,'1984-10-05','2021-10-16','Y6825694','24 Month',1,2);

INSERT INTO client_hire (customer_number,first_name,surname,hire_number,home_address,phone_number,date_of_birth,date_hired,driving_license_number,rent_period,car_id,staff_id) VALUES (3,'Natalie','Gordon',3,'103 Chestnut St Lbby Philadelphia, PA 19106, USA',+13122691615,'1992-08-02','2021-10-17','S5312578','6 Month',1,3);

INSERT INTO client_hire (customer_number,first_name,surname,hire_number,home_address,phone_number,date_of_birth,date_hired,driving_license_number,rent_period,car_id,staff_id) VALUES (4,'Lisa','Brooks',4,'85 Race St Jonesboro, AR 72401, USA',+17585393291,'1987-06-04','2021-10-16','551453189','36 Month',1,4);

INSERT INTO client_hire (customer_number,first_name,surname,hire_number,home_address,phone_number,date_of_birth,date_hired,driving_license_number,rent_period,car_id,staff_id) VALUES (4,'Janie','Colon',5,'36 Centennial Blvd Colorado Springs, CO 80919, USA',+12604137247,'1974-03-15','2021-10-18','281558240','12 Month',1,5);


INSERT INTO staff (company_id,staff_number,firstname,surname,home_address,phone_number,date_of_birth,date_joined_the_company,job_title,salary) VALUES (1,1,'Mitchell','Patteson','1082 Angus Road New York, NY 10016',+12124509334,'1988-05-04','2021-10-12','Staff','$8000');

INSERT INTO staff (company_id,staff_number,firstname,surname,home_address,phone_number,date_of_birth,date_joined_the_company,job_title,salary) VALUES (1,2,'Abigail','Maas','669 Junkins Avenue Valdosta, GA 31601',+12296308532,'1969-08-01','2021-10-13','Staff','$8200');

INSERT INTO staff (company_id,staff_number,firstname,surname,home_address,phone_number,date_of_birth,date_joined_the_company,job_title,salary) VALUES (1,3,'Justin','Jenks','4357 Scott Street Poughkeepsie, NY 12603',+18455180082,'1964-05-29','2021-10-13','Staff','$8500');

INSERT INTO staff (company_id,staff_number,firstname,surname,home_address,phone_number,date_of_birth,date_joined_the_company,job_title,salary) VALUES (1,4,'Zac','Thompson','4725 Harter Street Lima, OH 45801',+19376226370,'1992-02-02','2021-10-15','Staff','$7500');

INSERT INTO staff (company_id,staff_number,firstname,surname,home_address,phone_number,date_of_birth,date_joined_the_company,job_title,salary) VALUES (1,5,'Caitlin','Gaunt','4481 Nicholas Street Concordia, KS 66901',+17852752878,'1979-06-20','2021-10-15','Staff','$8300');