--2
create table customers
(
	customer_id integer primary key,
	cust_name varchar,
	city varchar,
	grade integer,
	salesman_id integer
);

insert into customers values (3002,'Nick Rimando','New York',100,5001), (3005,'Graham Zusi','California',200,5002),
(3001,'Brad Guzan','London',NULL,5005), (3004,'Fabian Johns','Paris',300,5006),
(3007,'Brad Davis','New York',200,5001), (3009,'Geoff Camero','Berlin',100,5003),
(3008,'Julian Green','London',300,5002);

select * from customers;
drop table if exists orders;
create table orders
(
	ord_no integer unique,
	purch_amt real,
	ord_date date,
	customer_id integer,
	salesman_id integer
);

insert into orders values (70001,150.5,'2012-10-05',3005,5002),(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),(70005,2400.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001);

select * from orders;
--3
select sum(purch_amt) from orders;
--4
select avg(purch_amt) from orders;
--5
select count(*) from customers;
--6
select min(purch_amt) from orders;
--7
select * from customers where right(split_part(cust_name,' ',1),1) = 'b';
--8
select * from orders where 'New York' = 
(select city from customers where customers.customer_id = orders.customer_id);
--9
select * from customers 
where (select sum(purch_amt) from orders group by customer_id having orders.customer_id = customers.customer_id) > 10;
--10
select sum(grade) from customers;
--11
select split_part(cust_name,' ', 1) from customers;
--12
select max(grade) from customers;