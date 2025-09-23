show databases;
create database employee_management;
use employee_management;

create table employee(
	emp_id bigint primary key auto_increment,
	name  varchar(50) not null,
    job_title  varchar(50)  not null,
    phone_no int,
    salary decimal(10,2) not null,
    dept_id int,
    project_id int
);

create table department(
	dept_id bigint primary key auto_increment,
    dept_name varchar(50) not null
);

create table project(
	project_id bigint primary key auto_increment,
    project_name varchar(50) not null
);


