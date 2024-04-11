create database db;
use db;
create table students(id int primary key,name varchar(20),subject varchar(20),gender char(1),mark float);
insert into students values(1,'Diya','Flutter','F',85.5),(2,'Aneesh','Mern','M',90.5),(3,'Jagan','Data Science','M',91.0);
select*from student;
select name,subject from student;
select*from student where name='Diya';
select*from student where mark>90;
select*from student where gender='F';
alter table students add column Place varchar(20);
select*from students;
update students set place='kozhikode' where id=1; 
update students set place='Wayanad' where id=2;
update students set place='kannur' where id=3;
alter table students rename column name to Name;
alter table students rename column subject to Subject;
alter table students rename column gender to Gender;
alter table students rename column mark to Mark;
alter table students rename column id to ID;
select*from  students order by Mark desc;
select*from students where gender='M' and Name like 'J%';




