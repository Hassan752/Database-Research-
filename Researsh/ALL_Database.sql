drop database  IF EXISTS student_record;
create database student_record;
use student_record;
     create table Student
( 
   student_id int primary key  auto_increment ,
    firstname varchar(50) not null,
	lastname varchar (50) not null,
    gender varchar (50) default null ,
    phone_number  varchar(50) DEFAULT NULL ,
    date_info date not null,
    course_id int ,
	register_id int

    
);
insert into Student (firstname,lastname ,phone_number, gender ,date_info) values ( 'Wael ' , 'Radwan' , '01254126928', 'male','2020-11-10');
insert into Student (firstname,lastname,date_info ) values (  'khaled ' , 'Mohammed','2020-11-12' );
insert into Student (firstname,lastname ,phone_number, gender,date_info) values ( 'Hassan ' , 'Mostafa' , '0125364889', 'male','2020-11-11');
insert into Student (firstname,lastname,gender,date_info ) values (  'Sama ' , 'Ayman','Female','2020-11-10' );
insert into Student (firstname,lastname ,phone_number,date_info) values ( 'Rewan ' , 'Osman' , '01125647985','2020-11-22');
insert into Student (firstname,lastname,date_info) values (  'Rami ' , 'Ragab' ,'2020-11-10' );
insert into Student (firstname,lastname ,phone_number, gender,date_info) values ( 'Hoda ' , 'Magdi' , '01256478364', 'Female','2020-11-3');
insert into Student (firstname,lastname ,phone_number,date_info) values ( 'Hassan ' , 'Mostafa' , '01254126928','2020-11-14');
insert into Student (firstname,lastname , gender,date_info) values ( 'Zaki ' , 'Karim' , 'male','2020-11-07');
insert into Student (firstname,lastname ,phone_number,date_info) values ( 'Yara ' , 'Tarek' , '0103698745','2020-11-15');
insert into Student (firstname,lastname,gender ,phone_number,date_info) values ( 'Maher ' , 'Ashraf' , 'male','0152314785','2020-11-6');
insert into Student (firstname,lastname ,phone_number,date_info) values ( 'Manar ' , 'Ghaly' , '01278569841','2020-11-8');


create table Course
(  
    course_id int primary key  auto_increment ,
    course_name varchar(50) not null,
    course_code varchar (50) not null,
    student_id int
   

);
insert into Course  (course_name , course_code ) values ('DataBase ' , 'T8792');
insert into Course  (course_name , course_code ) values ('IT ' , 'E221');
insert into Course  (course_name , course_code ) values ('Math ' , 'DE55');
insert into Course  (course_name , course_code ) values ('Data Structure ' , 'Qi223');
insert into Course  (course_name , course_code ) values ('Data Analysis' , 'R221');
insert into Course  (course_name , course_code ) values ('Web' , 'I287');
insert into Course  (course_name , course_code ) values ('Physics' , 'P982');
insert into Course  (course_name , course_code ) values ('Elctronics' , 'A886');

create table Department (

department_id int primary key  auto_increment,
department_name varchar(50) not null,
student_id int 


);
insert into Department (department_name) value ('private Department');

create table Register (
register_id int primary key auto_increment,
student_id int not null,
course_id int not null,
department_id int not null ,
register_time varchar(55) default null




);

insert into Register(student_id , course_id , department_id, register_time ) values (1,1,1,8.20 );
insert into Register(student_id , course_id , department_id, register_time ) values (2,3,1,9.25 );
insert into Register(student_id , course_id , department_id, register_time ) values (3,2,1,10.45 );
insert into Register(student_id , course_id , department_id, register_time ) values (4,4,1,11.36 );
insert into Register(student_id , course_id , department_id, register_time ) values (5,5,1,9.20 );
insert into Register(student_id , course_id , department_id, register_time ) values (7,4,1,11.32 );
insert into Register(student_id , course_id , department_id, register_time ) values (6,2,1,11.42 );
insert into Register(student_id , course_id , department_id, register_time ) values (8,4,1,9.36 );
insert into Register(student_id , course_id , department_id, register_time ) values (9,2,1,11.36 );










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
 
 
update Student set phone_number = '01298763541' where student_id = 1 ;
update Student set lastname = 'Moahmmmed' , date_info = '2020-11-16' where student_id = 11 ;
update Course set course_code = 'U875' where course_id = 2;
update Register set register_time = '10.35' where register_id = '2';
update Student set firstname = 'Emy' , lastname = 'Wael' , date_info = '2020-11-11' where student_id = 12;

Delete from Student where student_id = 11;
Delete from Register where register_id = 7;
Delete from Course where course_id = 8;
Delete from Student where student_id = 12;
Delete from Course where course_id = 7;











 
 

















