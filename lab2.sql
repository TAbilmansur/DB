drop table if exists countries;
--2
create table countries(
	country_id serial primary key,
	country_name varchar,
	region_id integer,
	population integer
);
select * from countries;

--3
insert into countries values(default,'USA',123,200000);
insert into countries values(default,'China',321,1000000000);
insert into countries values(default,'Small country',555,90000);

select * from countries;

--4
insert into countries (country_id,country_name) values(default,'Kazakhstan');

select * from countries;

--5
insert into countries (region_id) values(NULL);

select * from countries;

--6
insert into countries (country_name) Values ('Country 1'),('Country 2'),('Country 3');
select * from countries;


--7
alter table countries alter column country_name set default 'Kazakhstan';

--8
insert into countries (country_name) values (default);
select * from countries;

--9
insert into countries default values;
select * from countries;

--10
drop table if exists countries_new;
create table countries_new (like countries);
select * from countries_new;
--11 
-- select * from countries;
insert into countries_new select * from countries;
select * from countries_new;
-- select * from countries;
--12
update countries 
set region_id = 1
where region_id is null;
select * from countries;
--13
update countries
set population = population*1.1
where population is not null
returning country_name,population as New_population;

--14
select * from countries;
delete from countries
where population < 100000;
select * from countries;

--15
delete from countries_new as cn
using countries as c
where c.country_id = cn.country_id
returning *;

--16
delete from countries_new
where true
returning *;
