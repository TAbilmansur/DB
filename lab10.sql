drop table if exists Books cascade;
create table Books
(
	book_id integer primary key,
	title varchar,
	author varchar,
	price decimal,
	quantity integer check (quantity >= 0)
);
insert into Books values (1,'Database 101','A.Smith',40.00,10) ,
(2,'Learn SQL','B.Johnson',35.00,15),
(3,'Advanced DB','C.Lee',50.00,5);
select * from Books;
drop table if exists Orders;
create table Orders
(
	order_id serial primary key,
	book_id integer references Books,
	customer_id integer,
	order_date date,
	quantity integer
);
drop table if exists Customers;
create table Customers
(
	customer_id integer primary key,
	name varchar,
	email varchar
);
insert into Customers values(101,'John Doe','johndoe@example.com'), (102,'Jane Doe','janedoe@example.com');
select * from Customers;
--1
create or replace procedure make_order(query_customer_id integer,query_book_id integer,query_quantity integer) as
$$
begin
	insert into Orders values (default,query_book_id,query_customer_id,current_date,query_quantity);
	update Books set quantity = quantity-query_quantity where book_id = query_book_id;
end;
$$
language plpgsql;
begin;
call make_order(101,1,2);
commit;
select * from Orders;
select * from Books;
--2
begin;
call make_order(102,3,10);
commit;
select * from Orders;
select * from Books;
--3
--1)
begin transaction isolation level read committed;
update Books set price = 100.00 where book_id = 2;
commit;
--2)
begin transaction isolation level read committed;
select * from Books;
select * from Books;
commit;
--4
begin;
update Customers set email = 'updated@example.com' where customer_id = 101;
commit;
select * from Customers;