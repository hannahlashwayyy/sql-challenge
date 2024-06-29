--Listing employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

-- listing first and last name for all employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees 
WHERE EXTRACT (YEAR FROM hire_date)=1986;

--listing department managers full name, department/employee number
SELECT e.first_name, e.last_name, e.emp_no, dm.dept_no
FROM employees e
INNER JOIN dept_manager dm ON e.emp_no = dm.emp_no;

--Listing department number/name for each employee(f/l name) along with that employee’s employee number
SELECT e.first_name, e.last_name, e.emp_no, de.dept_no, d.dept_name
FROM dept_emp de
JOIN employees e ON e.emp_no = de.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no;

--Listing first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Listing full names of all employees in sales dept. w/ their employee number
SELECT e.first_name, e.last_name, e.emp_no, d.dept_name
FROM dept_emp de
INNER JOIN employees e ON e.emp_no = de.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

--Listing all employees' full names in the Sales and Development departments, including their employee number
SELECT e.first_name, e.last_name, e.emp_no, d.dept_name
FROM dept_emp de
INNER JOIN employees e ON e.emp_no = de.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

-- frequency counts for employee last names 
SELECT last_name, COUNT(*) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;
