SELECT a.emp_no, a.last_name, a.first_name, a.sex, b.salary
FROM employees AS a
	JOIN salaries AS b ON b.emp_no = a.emp_no
;
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'
;

SELECT a.dept_no, b.dept_name, a.emp_no, c.last_name, c.first_name
FROM dept_manager AS a
	JOIN departments AS b ON b.dept_no = a.dept_no
JOIN employees AS c ON c.emp_no = a.emp_no

SELECT a.dept_no, a.emp_no, b.last_name, b.first_name, c.dept_name
FROM dept_emp AS a
	JOIN employees AS b ON b.emp_no = a.emp_no
	JOIN departments AS c ON c.dept_no = a.dept_no
;