drop database IF EXISTS student_record;
create database student_record;
use student_record;
create table Course
(  
    course_id int primary key   auto_increment ,
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
