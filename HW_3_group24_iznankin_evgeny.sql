 -- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees_name,monthly_salary from salary
	join employee_salary on salary.id=employee_salary.salary_id
	join employees on employee_salary.employee_id=employees.id 

	
-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees_name,monthly_salary from salary
	join employee_salary on salary.id=employee_salary.salary_id
	join employees on employee_salary.employee_id=employees.id
	where monthly_salary<2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees_name,monthly_salary from salary
	join employee_salary on salary.id=employee_salary.salary_id
	left outer join employees on employee_salary.employee_id=employees.id
	where employees_name is null;


-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees_name,monthly_salary from salary
	join employee_salary on salary.id=employee_salary.salary_id
	left join employees on employee_salary.employee_id=employees.id
	where employees_name is null and monthly_salary<2000;

-- 5. Найти всех работников кому не начислена ЗП.
select employees_name,monthly_salary from salary
	join employee_salary on salary.id=employee_salary.salary_id
	right join employees on employee_salary.employee_id=employees.id
	where monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select employees_name,role_name from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id;
	
-- 7. Вывести имена и должность только Java разработчиков.
select employees_name,role_name from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	where role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.
select employees_name,role_name from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	where role_name like '%Python%';


-- 9. Вывести имена и должность всех QA инженеров.
select employees_name,role_name from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	where role_name like '%QA%';


-- 10. Вывести имена и должность ручных QA инженеров.
select employees_name,role_name from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	where role_name like '%Manual QA%';

-- 11. Вывести имена и должность автоматизаторов QA
select employees_name,role_name from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	where role_name like '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
select employees_name,role_name,monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	left join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	left join salary on employee_salary.salary_id=salary.id
	where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employees_name,monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	left join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	left join salary on employee_salary.salary_id=salary.id
	where role_name like '%Middle%';


-- 14. Вывести имена и зарплаты Senior специалистов
select employees_name,monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	left join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	left join salary on employee_salary.salary_id=salary.id
	where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	left join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	left join salary on employee_salary.salary_id=salary.id
	where role_name like '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков
select monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	left join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	left join salary on employee_salary.salary_id=salary.id
	where role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employees_name,monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where role_name like '%Junior Python %';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employees_name,monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where role_name like '%Middle JavaScript%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select employees_name,monthly_salary,role_name from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where role_name like '%Senior Java developer%';

-- 20. Вывести зарплаты Junior QA инженеров
select employees_name,monthly_salary,role_name from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	left join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	left join salary on employee_salary.salary_id=salary.id
	where role_name like '%Junior Manual QA%' or role_name like '%Junior Automation QA%'

-- 21. Вывести среднюю зарплату всех Junior специалистов
select AVG(monthly_salary) as avg from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where role_name like '%Junior%';
	
-- 22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) as sum from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) as min_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) as MAX_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where role_name like '%QA%';

-- 25. Вывести количество QA инженеров
select count(role_name) as summ_QA from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	left join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	left join salary on employee_salary.salary_id=salary.id
	where role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.
select count(role_name) as summ_Middle from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	left join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	left join salary on employee_salary.salary_id=salary.id
	where role_name like '%Middle%';

-- 27. Вывести количество разработчиков
select count(role_name) as summ_developer from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	left join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	left join salary on employee_salary.salary_id=salary.id
	where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) as MAX_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where role_name like '%developer%';


-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees_name,role_name,monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	left join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	left join salary on employee_salary.salary_id=salary.id
	order by monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees_name,role_name,monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where monthly_salary>=1700 and monthly_salary<=2300 
	order by monthly_salary;
	
-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees_name,role_name,monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where monthly_salary<2300 
	order by monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees_name,role_name,monthly_salary from employees
	join roles_employee on employees.id=roles_employee.employee_id
	join roles on roles_employee.role_id=roles.id
	join employee_salary on roles_employee.employee_id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id
	where monthly_salary in(1100,1500,2000)
	order by monthly_salary;


