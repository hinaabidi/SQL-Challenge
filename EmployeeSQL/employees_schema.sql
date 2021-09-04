-- Employee table create query 

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
)


-- Departments table create query


CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
)

-- Dept_emp table create query 

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR
)

-- Salaries table create query


CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT
)


-- Titles table create query

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
)

-- Dept_manager table create query
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT
)

