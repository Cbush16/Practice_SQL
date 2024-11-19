-- Create a Database
create database school_db;
use school_db;
-- Create a Table
create table students(
id int primary key auto_increment,
name varchar(50),
grade_level varchar(20), 
average_score decimal (4,2)
);
-- Insert Data into a Table
insert into students(name, grade_level, average_score)
values ('John Doe','10th', 88.50);
-- Insert Multiple Records
insert into students(name, grade_level, average_score)
values ('Jane Smith','10th',91.20),
('Mark Lee','11th',85.75),
('Emily Davis','12th',90.00);
-- Retrieve All Records
select * from students;
-- Retrieve Specific Columns
select name,average_score from students;
-- Update a Record
update students
set average_score=90.00
where name='John Doe';
-- Delete a Record
delete from students
where name='Mark Lee';
-- Filter and Retrieve Records
select * from students where grade_level='10th' and average_score>90.00;
-- Order Records
select name,average_score from students order by average_score desc;