create database db3;
use db3;
create table depositor(accno int primary key,depositor_name varchar(20),branch varchar(20),balance int);
create table borrower(loan_no int primary key,accno int,foreign key(accno)references depositor(accno),amount float not null);
insert into depositor values(1001,'Akarsh','Kozhikode',15000),(1002,'Adwaith','Kasargod','25000'),(1003,'Akhila','Kollam','62000'),(1004,'Reshma','Kannur','79000'),(1005,'Anusree','Thirur',68000);
insert into borrower values(101,1001,2000),(102,1002,4000),(103,1003,5500),(104,1004,3500),(105,1005,4500);
select*from depositor;
select*from borrower;
select avg(amount)from borrower;
select max(amount)from borrower;
select min(amount)from borrower;
select count(*)from borrower;
select count(*)as count from borrower;
select sum(amount)from borrower;
insert into depositor values(1006,'Diya','Ferok',95000);
select depositor_name from depositor where accno not in(select accno from borrower);
select branch,count(*)from depositor group by branch;
alter table borrower drop column amount;




