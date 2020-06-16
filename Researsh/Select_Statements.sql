-- Select Statments--
select * from Student;
select * from Student where date_info < '2020-11-9';
select * from Student where firstname like 'R%';
select * from Student where gender = 'male';
select * from Student where gender = 'female';
select * from Student where lastname like '%a%';
select firstname,lastname ,phone_number from Student where phone_number is null;
select*from Course ;
select * from Course where course_name like 'D%';
select * from Course where course_code like '%2%';
select course_code from Course order by course_code DESC ;
select count(student_id) from Student;
select * from Register;
select course_id from Student group by course_id; 
select count(phone_number) from Student Group by phone_number;
select firstname From Student union select course_name as firstname from Course;
select * from Student limit 5 ;

select * from Student join Course on (Student.course_id = Course.course_id);

select firstname , lastname , Student.course_id, date_info , phone_number 
from Student 
join Register on (Student.register_id = Register.register_id);

select * from Course 
left join Register ON (Course.course_id = Register.course_id)
right join Student on Register.student_id = Student.student_id;

select Register.register_id , Student.firstname,Register.register_time from Register 
inner join Student on Register.student_id = Student.student_id ;

 select * from Student Join Register 
 on Student.student_id = Register.student_id AND (Student.date_info < '2020-11-14' OR Student.gender = 'female')
 Order by Student.date_info DESC;
 
select max(register_time) from Register;

select min(date_info) from Student;

select * from Student where date_info Between  '2020-11-3' AND '2020-11-14';

select AVG (register_time) from Register;

select * From Student where student_id
 in (select student_id from Register where register_time > 9.20);