drop database if exists student_record;
create database student_record;
use student_record;

create table Register (
register_id int primary key auto_increment,
student_id int not null,
course_id int not null,
department_id int not null ,
register_time varchar(55) default null

);
