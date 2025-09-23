show databases;
create database student_management;
use student_management;

create table students(
	std_id int primary key ,
    std_name varchar(50),
    std_roll int,
    std_email varchar (40)
);

insert into students(std_id, std_name, std_roll, std_email)
values(2, 'sita', 102, 'sita@gmail.com'),
  (3, 'ram', 103, 'ram@gmail.com'),
  (4, 'geeta', 104, 'geeta@gmail.com'),
  (5, 'arjun', 105, 'arjun@gmail.com'),
  (6, 'radha', 106, 'radha@gmail.com');

select * from students;
select std_name, std_email from students;
-- to add new column with default null
alter table students
add column std_class_room varchar(20);

-- to add new column with default some value
alter table students
add column std_class_room varchar(20) default 'cs103';

desc students;
	
alter table students
drop column std_class_room;

select * from students limit 2;

select * from students where std_id=2;
-- we use offset and limit in pagination
select * from students limit 3 offset 1;

update students
set std_class_room = 'cs405'
where std_id = 2;

delete from students where std_id = 3;

truncate students;

drop table students;

drop database student_management;

select database();
