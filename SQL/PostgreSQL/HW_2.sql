--PostreSQL
--IP: 159.69.151.133
--Port: 5056
--DB: qa_ddl_27_117
--User: padawan_user_117
--Pass: 123



--1) Ñîçäàòü òàáëèöó employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Íàïîëíèòü òàáëèöó employee 70 ñòðîêàìè.



create table employees (
id serial primary key,
employee_name int not null
);


DO $$
BEGIN
FOR r IN 1..70 
	LOOP
	INSERT INTO employees (employee_name) values('employee_'||r);
	end loop;
end $$;


--2) Ñîçäàòü òàáëèöó salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Íàïîëíèòü òàáëèöó salary 15 ñòðîêàìè:
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

create table salary (
id serial primary key,
monthly_salary int not null
);


DO $$
DECLARE salary1 integer := 1000;
begin
	while salary1 < 2500
	loop
	INSERT INTO salary (monthly_salary) values(salary1);
	salary1 := salary1 + 100;
	end loop;
end $$;


--3) Ñîçäàòü òàáëèöó employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Íàïîëíèòü òàáëèöó employee_salary 40 ñòðîêàìè:
--- â 10 ñòðîê èç 40 âñòàâèòü íåñóùåñòâóþùèå employee_id

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

DO $$
BEGIN
FOR i IN 1..40 
	loop
		if i < 30
		then
			INSERT INTO employee_salary (employee_id, salary_id) values(i,i);
		elsif i > 30
		then 
			INSERT INTO employee_salary (employee_id, salary_id) values(i+20,i+20);
		end if;
	end loop;
end $$;
