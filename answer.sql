SELECT * FROM assign_car a, car_detail c WHERE (a.id = c.id) AND c.vehical_class like 'A' AND a.branch_id = 2 ;

UPDATE client_hire SET phone_number = 0831234567 WHERE id = 12;

SELECT * from client_hire WHERE first_name LIKE 'Bry%' || 'Bri%';

SELECT * FROM staff WHERE id IN(SELECT staff_id FROM client_hire GROUP BY staff_id HAVING COUNT(staff_id) < 3);

SELECT * FROM client_hire ch JOIN car_detail cd USING(id) WHERE cd.registration_number = 06879238 ORDER BY ch.date_hired DESC;

SELECT vehical_class, cost, model_name FROM car_detail WHERE colour LIKE '%Red%';

SELECT manufacturer FROM car_detail GROUP BY status, manufacturer HAVING COUNT(status) > 3 AND status='broken';

UPDATE car_detail SET cost=cost*1.05;

SELECT vehical_class FROM car_detail WHERE status LIKE 'hired' GROUP BY vehical_class ORDER BY count(*) DESC LIMIT 1;

SELECT DISTINCT(car_id)/car_id FROM client_hire GROUP BY car_id;



5) Three other select statements could be:-

1. SELECT car_name, cost FROM car_detail ORDER BY cost DESC;

This query will help us know the names and cost of all such cars which are costliest in descending order of their cost. This helps to decide which car is costlier than their counterparts in the list.

2. SELECT * FROM staff s INNER JOIN company_branch cb ON(s.company_id = cb.id);

This query will be helpful when we want to see all the details of an employee along with their office location and the respective country where company branch is located. This helps to determine which employee is working in certain parts of the world like New York or Wrightwood, etc.

3. SELECT * FROM car_detail cd JOIN assign_car ac ON(cd.id = ac.car_id) JOIN company_branch cb ON(cb.id = ac.branch_id) ;

This query will be needed when we want to know all the details of the car along with the details about the branch of the company from where it was hired. It also gives the detail about compnay branch such as address and country from where a particular car was hired.