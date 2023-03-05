--Create titles table with emp_no as foreign (Do I need to add a primary key?)
CREATE TABLE titles (
title_id VARCHAR (5) NOT NULL PRIMARY KEY,
title VARCHAR (30) NOT NULL
);

--Create employees table with emp_no primary key
DROP TABLE employees;
CREATE TABLE employees (
emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR (30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);
	
--Create salaries table with emp_no as foreign
CREATE TABLE salaries (
emp_no INT NOT NULL,
salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Create departments table primary key dept_no
DROP TABLE departments;
CREATE TABLE departments (
dept_no VARCHAR (5) NOT NULL PRIMARY KEY,
dept_name VARCHAR (30) NOT NULL
);

--Create dept_manager table with 2 foreign
DROP TABLE dept_manager;
CREATE TABLE dept_manager (
dept_no VARCHAR (5) NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Create debt_emp with emp_no and dept_no as foreign 
DROP TABLE dept_emp;
CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR (5) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);




