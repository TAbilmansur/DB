--1
create or replace function increase_value(a integer) returns integer as
$$
begin
	return a+10;
end;
$$
language plpgsql;
select increase_value(15);
--2
create or replace function compare_numbers(a integer,b integer) returns varchar as
$$
begin
	if a > b then return 'Greater';
	end if;
	if b > a then return 'Lesser';
	end if;
	return 'Equal';
end;
$$ 
language plpgsql;
select compare_numbers(5,4) as GREATER,compare_numbers(4,5) as LESSER,compare_numbers(5,5) as EQUAL;
--3
create or replace function number_series(n integer) returns table(value integer) as
$$
begin
	drop table if exists answer;
	create table answer
	(
		value integer
	);
	for i in 1..n loop
		insert into answer values (i);
	end loop;
	return query select * from answer;
-- 	for i in 1..n loop
		
end;
$$ 
language plpgsql;
select * from number_series(10);
--4
drop table if exists employees;
create table employees
(
	name varchar primary key,
	salary integer,
	job varchar
);
insert into employees values ('John',50000,'Driver'), ('Bob',45000,'Policeman'), 
('Alice',25000,'Firefighter');
create or replace function find_employee(name_query varchar) 
returns table(name varchar,salary integer,job varchar) as
$$
begin
	return query select * from employees e where e.name = name_query;
end;
$$
language plpgsql;
select * from find_employee('Alice');
--5
drop table if exists products;
create table products
(
	name varchar,
	id serial primary key,
	category varchar
);
insert into products (name,category) values ('Bread','food'), ('Smartphone','gadget'),
('Computer','gadget'), ('Shirts','clothes');
create or replace function list_products(category_query varchar) returns table(id integer,name varchar) as
$$
begin
	return query select p.id,p.name from products p where category_query = p.category;
end;
$$
language plpgsql;
select * from list_products('gadget');
--6
create or replace function calculate_bonus(work_done integer, expected_work integer) returns integer as
$$
begin
	return (work_done-expected_work)*10;
end;
$$
language plpgsql;
create or replace function update_salary(query_name varchar,work_done integer,expected_work integer,out previous_salary integer,out new_salary integer) returns record as
$$
begin
	select salary from employees e where e.name = query_name into previous_salary;
	new_salary := previous_salary+calculate_bonus(work_done,expected_work);
	update employees set salary = new_salary;
end;
$$
language plpgsql;
select * from update_salary('John',45,30);
--7
drop function complex_calculation;
create or replace function complex_calculation(index_left integer,index_right integer,string varchar) returns varchar as
$$
<<complex>>
declare
	answer varchar = '';
begin
	
	<<from_left>>
	begin
		complex.answer = complex.answer || left(string,index_left);
	end from_left;
	<<from_right>>
	begin
		complex.answer = complex.answer || right(string,index_right);
	end from_right;
	
	return reverse(answer);
end complex;
$$
language plpgsql;
select * from complex_calculation(2,3,'example text');