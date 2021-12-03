1)Select a.id,b.*,c.id From assign_car a inner join car_detail b on (a.car_id = b.id) inner join company_branch on (a.branch_id = c.id)
2)update client_hire set phone_number = +236573933 where id = 1;
3)select * from client_hire where first_name = 'Bry' or first_name = 'Bri';
4)select a.id,b.* from client_hire a inner join staff b on (a.staff_id = b.id);
5)select a.*,b.id from client_hire a inner join client_hire on (b.registration_number = 06B79238);
6)select a.vehicle_class,a.cost,a.model_name from car_detail a on (a.colour = 'Solid Fire Red');
7)select avg(count(a)) from client_hire a inner join car_detail b on(a.car_id = b.id);
8)update car_detail set cost= (cost+((cost/100)*5));
9)select max(a),b.vehicle_class from client_hire a inner join car_detail b on (a.car_id = b.id);
10)select a.manufacturer from car_detail a on (a.status='broken');