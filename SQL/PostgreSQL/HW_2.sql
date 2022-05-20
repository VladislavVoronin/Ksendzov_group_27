--PostreSQL
--IP: 159.69.151.133
--Port: 5056
--DB: qa_ddl_27_117
--User: padawan_user_117
--Pass: 123


--Обнулить Primal Key
--ALTER SEQUENCE roles_employee_id_seq RESTART WITH 1;
--UPDATE salary SET id=nextval('salary_id_seq');

--Очистить таблицу
--delete from roles_employee;





--1) Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name int not null
);

--2) Наполнить таблицу employee 70 строками.

DO $$
BEGIN
FOR r IN 1..70 
	LOOP
	INSERT INTO employees (employee_name) values('employee_'||r);
	end loop;
end $$;



--3) Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary (
id serial primary key,
monthly_salary int not null
);

--4) Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500


DO $$
DECLARE salary1 integer := 1000;
begin
	while salary1 <= 2500
	loop
	INSERT INTO salary (monthly_salary) values(salary1);
	salary1 := salary1 + 100;
	end loop;
end $$;



--5) Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--6)Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

DO $$
BEGIN
FOR i IN 1..40 
	loop
		if i < 30
			then
				INSERT INTO employee_salary (employee_id, salary_id) values(i,i);
		elsif i >= 30
			then 
				INSERT INTO employee_salary (employee_id, salary_id) values(i+100,i+100);
		end if;
	end loop;
end $$

--7)Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles (
id serial primary key,
role_name int not null unique
);

--8) Поменять тип столба role_name с int на varchar(30)

ALTER TABLE roles ALTER COLUMN role_name TYPE varchar(30);

--9) Наполнить таблицу roles 20 строками:

insert into roles (role_name)
values	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

--10)Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
	
create table roles_employee (
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key(employee_id) references employees(id),
foreign key(role_id) references roles(id)
);

--11)Наполнить таблицу roles_employee 40 строками

INSERT INTO roles_employee(employee_id, role_id)
values ((select id from employees where id =1), (select id from roles where id =1));

DO $$
DECLARE n integer := 1;
begin
FOR i IN 1..40 
	loop
		if i <= 20
			then
				INSERT INTO roles_employee(employee_id, role_id) 
				values	(
						(select id from employees where id = i), 
						(select id from roles where id = i)
						);
		elsif i > 20
			then 
				INSERT INTO roles_employee(employee_id, role_id) 
				values	(
						(select id from employees where id = i), 
						(select id from roles where id = n)
						);
				n := n + 1;
		end if;
	end loop;
end $$
