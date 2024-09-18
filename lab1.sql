-- create database lab1;
-- drop table if exists users;
-- -- 2
-- create table users(
-- 	firstname varchar(50),
-- 	lastname varchar(50),
-- 	id serial
-- );
-- select * from users;

-- -- 3
-- alter table users add column isadmin integer;

-- select * from users;

-- -- 4
-- alter table users alter column isadmin type bool USING isadmin::boolean;

-- select * from users;

-- -- 5 

-- alter table users alter column isadmin set default False;

-- select * from users;

-- -- 6
-- alter table users add primary key(id);

-- select * from users;

-- -- 7
-- create table tasks(
-- 	id serial,
-- 	name varchar(50),
-- 	user_id integer
-- );
-- select * from tasks;

-- --8
-- drop table tasks;

-- --9
-- drop database lab1