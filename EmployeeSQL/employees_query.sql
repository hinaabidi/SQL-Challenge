-- Query employees table with salary from salaries table

select a.emp_no, a.last_name, a.first_name, a.sex, b.salary 
from employees as a inner join salaries as b on a.emp_no = b.emp_no

-- Query for employee details who were hired in 1986

select first_name, last_name, hire_date from employees 
where date_part('year', hire_date) = '1986'

-- list the manager of each department with more information

select a.dept_no, a.dept_name, b.emp_no , c.last_name, c.first_name
from departments as a inner join dept_manager as b
on a.dept_no = b.dept_no inner join employees as c on b.emp_no = c.emp_no

--list employees information with the deprtmant name

select a.emp_no, a.last_name, a.first_name, c.dept_name from employees as a inner join
dept_emp as b on a.emp_no = b.emp_no inner join departments as c on b.dept_no = c.dept_no


--List the employees details with first name "Hercules" and last name begins with B

select first_name, last_name, sex from employees where first_name = 'Hercules' and last_name like 'B%'

--List employees in the Sales department, including employee number, last name, first name, and dept name

select a.emp_no, a.first_name, a.last_name, c.dept_name from employees as a 
inner join dept_emp as b on a.emp_no = b.emp_no inner join departments as c on 
b.dept_no = c.dept_no where c.dept_name = 'Sales'

--List employees in the Sales and development departments, including employee number, last name, first name, and dept name

select a.emp_no, a.first_name, a.last_name, c.dept_name from employees as a 
inner join dept_emp as b on a.emp_no = b.emp_no inner join departments as c on 
b.dept_no = c.dept_no where c.dept_name = 'Sales' OR c.dept_name = 'Development'

-- List frequency count of employees last name in descending order

select last_name, count(last_name) AS "frequency" 
from employees group by last_name order by "frequency" desc