
create database School_AssistedProject

use School_AssistedProject

create table Student
(ID int primary key,
Name nvarchar(50) not null,
Address nvarchar(100) not null,
Email nvarchar(75) not null,
Class nvarchar(5) not null
)

create table Class
(ID int primary key,
Name nvarchar(5) not null
)

create table Subject
(ID int primary key,
Name nvarchar(50) not null
)

select * from Student
select * from Class
select * from Subject

----ASSISTED PROJECT 1.3  = Basic SQL Queries

--INSERT
insert into Student values (101, 'Shivani', 'ABC Street','shivani@example.com', '10A')
insert into Student values (102, 'Amit', 'LMN Street','amit@example.com', '10B')
insert into Student values (103, 'Dheeraj', 'XYZ Street','dheeraj@example.com', '10D')

select * from Student

select Name from Student

--UPDATE

update Student 
set Class='10B'

select * from Student

update Student
set Address='WXY Street'
where ID=103

select * from Student

--DELETE

delete from Student where ID =102

select * from Student

--filter and sorting

select * from Student where Name like 'a%'
select * from Student order by Address
select * from student where Email = 'dheeraj@example.com' and Class='10D';

---using variables in queries

declare @namevalue as varchar(100)
set @namevalue = 'Rajat'
select * from student where name  = @namevalue