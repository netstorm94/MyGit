-- 1. Создать таблицу employees
create table employees (
	id serial primary key,
	employees_name varchar(50) not null
)

select * from employees;

-- 2. Наполнить таблицу employee 70 строками.
insert into employees(employees_name)
values ('Амалия Селезнева'),
	  ('Давид Шестаков'),
	  ('Даниил Попов'),
	  ('Никита Крюков'),
	  ('Полина Макарова'),
	  ('Максим Еремин'),
	  ('Анастасия Иванова'),
	  ('Алиса Яковлева'),
	  ('Дмитрий Головин'),
	  ('Никита Казаков'),
	  ('Екатерина Назарова'),
	  ('Степан Плотников'),
	  ('Лея Короткова'),
	  ('Павел Кузнецов'),
	  ('Дарья Артемова'),
	  ('Айлин Мешкова'),
	  ('Полина Овсянникова'),
	  ('Ника Потапова'),
	  ('Ярослав Соколов'),
	  ('Артём Новиков'),
	  ('Леонид Калашников'),
	  ('Валентина Горбунова'),
	  ('Евангелина Воробьева'),
	  ('Алексей Островский'),
	  ('Николай Назаров'),
	  ('Дарья Иванова'),
	  ('Тихон Кузин'),
	  ('Полина Попова'),
	  ('Вероника Миронова'),
	  ('Алиса Тарасова'),
	  ('Матвей Моисеев'),
	  ('Кирилл Семенов'),
	  ('Ольга Березина'),
	  ('Татьяна Петухова'),
	  ('Ксения Нечаева'),
	  ('Милана Мешкова'),
	  ('Арсений Рубцов'),
	  ('Варвара Терехова'),
	  ('Максим Соколов'),
	  ('Марк Софронов'),
	  ('Матвей Павлов'),
	  ('Фатима Артемова'),
	  ('Матвей Волков'),
	  ('Ярослав Севастьянов'),
	  ('Кира Еремина'),
	  ('Ульяна Федорова'),
	  ('Лев Уткин'),
	  ('Виктория Сидорова'),
	  ('Анна Туманова'),
	  ('Лев Чернышев'),
	  ('Алексей Мальцев'),
	  ('Егор Соловьев'),
	  ('Елизавета Коновалова'),
	  ('Сафия Волкова'),
	  ('Екатерина Иванова'),
	  ('Виктория Балашова'),
	  ('Арина Потапова'),
	  ('Артём Вешняков'),
	  ('София Богомолова'),
	  ('Мария Прокофьева'),
	  ('Василиса Егорова'),
	  ('Александр Трифонов'),
	  ('Лев Гришин'),
	  ('Тимур Успенский'),
	  ('Елизавета Сафонова'),
	  ('Амелия Жукова'),
	  ('Валерия Дмитриева'),
	  ('Максим Яковлев'),
	  ('Лидия Григорьева'),
	  ('Мирослава Гусева');

	 
-- 3. Создать таблицу salary
create table salary (
	id serial primary key,
	monthly_salary int not null
)

select * from salary;

-- 4.Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);

-- 5.Создать таблицу employee_salary
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
)

select * from employee_salary;

-- 6. Наполнить таблицу employee_salary 40 строками:- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id,salary_id)
values (1,1),
	  (2,2),
	  (3,3),
	  (4,4),
	  (5,5),
	  (6,6),
	  (7,7),
	  (8,8),
	  (9,9),
	  (10,10),
	  (11,11),
	  (12,12),
	  (13,13),
	  (14,14),
	  (15,15),
	  (16,16),
	  (17,13),
	  (18,2),
	  (19,11),
	  (20,8),
	  (21,3),
	  (22,6),
	  (23,13),
	  (24,8),
	  (25,1),
	  (26,3),
	  (27,12),
	  (28,10),
	  (29,8),
	  (30,5),
	  (71,12),
	  (72,14),
	  (73,8),
	  (74,1),
	  (75,8),
	  (76,11),
	  (77,2),
	  (78,3),
	  (79,12),
	  (80,11);
	  
-- 7. Создать таблицу roles
create table roles (
	id serial primary key,
	role_name int not null unique
)	

select * from roles;

-- 8.Поменять тип столба role_name с int на varchar(30)
alter table roles alter column role_name type varchar(30);

-- 9. Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values ('Junior Python developer'),
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
	  
select * from roles;

-- 10. Создать таблицу roles_employee
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
	 references employees(id),
	foreign key (role_id)
	 references roles(id)
)

select * from roles_employee

-- 11. Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id,role_id)
values (7,10),
	   (1,9),
	   (29,12),
	   (15,1),
	   (11,10),
	   (17,1),
	   (34,16),
	   (27,3),
	   (14,12),
	   (8,10),
	   (39,15),
	   (38,15),
	   (2,15),
	   (35,4),
	   (9,18),
	   (10,11),
	   (23,3),
	   (30,6),
	   (31,10),
	   (32,20),
	   (5,20),
	   (21,8),
	   (18,7),
	   (12,15),
	   (20,18),
	   (13,17),
	   (6,7),
	   (24,3),
	   (28,12),
	   (40,2),
	   (4,10),
	   (19,13),
	   (33,16),
	   (22,17),
	   (36,19),
	   (37,3),
	   (26,2),
	   (25,1),
	   (3,17);
	   
select * from roles_employee;
