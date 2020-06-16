drop database if exists student_record;
create database student_record;
use student_record;
create table Department (

department_id int primary key  auto_increment,
department_name varchar(50) not null,
student_id int 
);

