create database db1;
use db1;
create table stdnt(rollno int primary key,name varchar(20),gender char(1),mark int,check(gender in('m','f','o')));
insert into stdnt values(1,'Diya','f',100),(2,'Anand','m',95),(3,'Arathi','f',30),(4,'ojas','m',74),(5,'arun','m',85);
select*from stdnt;
select name,gender from stdnt where gender='m';
select avg(mark)from stdnt;
select rollno,name,mark from stdnt where mark in(select max(mark) from stdnt);
alter table stdnt add column place varchar(20);
update stdnt set place='kozhikode'where rollno=1;
update stdnt set place='kannur'where rollno=2;
update stdnt set place='kozhikode'where rollno=3;
update stdnt set place='wayanad'where rollno=4;
update stdnt set place='kollam'where rollno=5;
select name,place from stdnt where gender='f' and mark between 35 and 70;
update stdnt set mark='36'where rollno=3;

