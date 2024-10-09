drop table if exists Warehouses;
create table Warehouses(
	code serial,
	location varchar(255),
	capacity integer
);
drop table if exists Boxes;
create table Boxes(
	code char(4),
	contents varchar(255),
	value real,
	warehouse integer
);

insert into Warehouses (location,capacity) values ('Chicago',3), ('Chicago',4),('New York',7),('Los Angeles',2),('San Francisco',8);
select * from Warehouses;


insert into Boxes values ('0MN7','Rocks',180,3), ('4H8P','Rocks',250,1), 
('4RT3','Scissors',190,4), ('7G3H','Rocks',200,1), ('8JN6','Papers',75,1),
('8Y6U','Papers',50,3), ('9J6F','Papers',175,2), ('LL08','Rocks',140,4),
('P0H6','Scissors',125,1), ('P2T6','Scissors',150,2), ('TU55','Papers',90,5);
select * from Boxes;

--4
select * from Warehouses;
--5
select * from Boxes where value > 150;
--6
select distinct on (contents) * from Boxes;
--7
select warehouse as code, count(*) from Boxes group by(warehouse);
--8
select warehouse as code, count(*) from Boxes group by(warehouse) having count(*) > 2;
--9
insert into warehouses (location,capacity) values ('New York',3);
--10
insert into boxes values ('H5RT','Papers',200,2);
--11
update boxes set value = value*0.85
where value = (select value from boxes order by (value) desc offset 2 limit 1);
--12
delete from boxes where value < 150;
--13
delete from boxes where 'New York' = (select location from warehouses where code = warehouse)
returning *;