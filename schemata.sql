--defining table for departments
CREATE TABLE departments ( 
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL
);
--printing to check that csv imported correct
SELECT * FROM departments;

--defining table for titles
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY, 
	title VARCHAR(30) NOT NULL
);
--printing to check that csv imported correct
SELECT * FROM titles;

--defining table for employees
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id), 
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(5), 
	hire_date DATE NOT NULL
);
--printing to check that csv imported correct
SELECT * FROM employees;

--defining table for department employees 
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(10),
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
--printing to check that csv imported correct
SELECT * FROM dept_emp;

--defining table for department managers 
CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);
--printing to check that csv imported correct
SELECT * FROM dept_manager;

--defining table for salaries
CREATE TABLE salaries (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL	
);
--printing to check that csv imported correct
SELECT * FROM salaries;

