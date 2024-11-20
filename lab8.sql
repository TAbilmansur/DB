select * from salesman;
select * from customers;
select * from orders;
--3
revoke all privileges on five from junior_dev;
revoke all privileges on six from junior_dev;
reassign owned by junior_dev to postgres;
drop role if exists junior_dev;
create role junior_dev login;
set role junior_dev;
set role postgres;
select current_user;
--4
create or replace view four as 
select * from salesman where city = 'New York';
select * from four;
--5
create or replace view five as
select ord_no,
(select cust_name from customers c where c.customer_id = o.customer_id),
(select name from salesman s where s.salesman_id = o.salesman_id)
from orders o;
select * from five;
select * from orders;
grant select,insert,update,delete on five to junior_dev;
--6
create or replace view six as
select * from customers c where (c.grade = (select max(grade) from customers));
select * from six;
grant select on six to junior_dev;
select * from customers;
--7
create or replace view seven as
select city,count(*) from salesman group by(city);
select * from seven;
--8
create or replace view eight as
select * from salesman s where s.salesman_id in (select salesman_id from customers c group by (salesman_id) having count(*) > 1);
select * from eight;
--9
drop role if exists intern;
create role intern;
grant junior_dev to intern;
set role intern;














--2
drop table if exists salesman cascade;
drop table if exists customers cascade;
drop table if exists orders;
create table salesman
(
	salesman_id integer primary key,
	name varchar,
	city varchar,
	commission real
);
insert into salesman (salesman_id,name,city,commission) values
(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5003,'Lauson Hen',default,0.12),
(5007,'Paul Adam','Rome',0.13);
select * from salesman;
create table customers
(
	customer_id serial primary key,
	cust_name varchar,
	city varchar,
	grade integer,
	salesman_id integer,
	foreign key (salesman_id) references salesman(salesman_id)
);
insert into customers (customer_id,cust_name,city,grade,salesman_id) values
(3002,'Nick Rimando','New York',100,5001),
(3005,'Graham Zusi','California',200,5002),
(3001,'Brad Guzan','London',default,5005),
(3004,'Fabian Johns','Paris',300,5006),
(3007,'Brad Davis','New York',200,5001),
(3009,'Geoff Camero','Berlin',100,5003),
(3008,'Julian Green','London',300,5002);
select * from customers;
create table orders
(
	ord_no integer primary key,
	purch_amt real,
	ord_date date,
	customer_id integer,
	salesman_id integer,
	foreign key (customer_id) references customers (customer_id),
	foreign key (salesman_id) references salesman (salesman_id)
);
insert into orders values
(70001,150.5,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),
(70005,2400.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001);
select * from orders;
