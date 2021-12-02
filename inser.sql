INSERT INTO company_branch (address,county) VALUES ('new york','something');


#example number 2 dont push the example data
INSERT INTO phone_number (company_id,number) VALUES (1,+19279233);

INSERT INTO car_detail (car_name,company_id,vehical_class,registration_number,model_name,engine_size,capacity,colour,current_milage,status,assigned,date_acquired,date_due) VALUES 
('some name',2,'A',123,'somthing','2ft',4,'red',40,DEFAULT,'0','2021-10-11 18:13:06','2021-10-11 18:13:06');
*here company_id refers to id of company_branch table so be sure the id should exists in company_branch tables
*vehical class should be A,B,C
*capacity refers to how many people can ride
*status should be avialble,hired,broken DEFAULT is available 
*assigned is boolean value if its assigned to some comapny_brach or NOT
*date acquired when the car comes to the comapny
*date due left this just add random DATABASE


INSERT INTO assign_car (car_id,branch_id) VALUES (1//->company_branch(id),1//->car_detail(id));
*here car id and branch id both refers to table car_detail and company_branch table id so be sure to that id number exists in bot table


//same applies to all tables
INSERT INTO client_hire (customer_number,first_name,surname,hire_number,home_address,phone_number,date_of_birth,date_hired,driving_license_number,rent_period,car_id,staff_id) VALUES (1,+19279233);


INSERT INTO staff (company_id,staff_number,firstname,surname,home_address,phone_number,date_of_birth,date_joined_the_company,job_title,salary) VALUES (1,+19279233);