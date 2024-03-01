CREATE TABLE departments (
	dept_no char(5) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(255) NOT NULL
);

SELECT * FROM departments

CREATE TABLE titles(
	title_id char(6) NOT NULL PRIMARY KEY,
	title VARCHAR(255)
);

ALTER TABLE titles
ALTER COLUMN title_id TYPE CHAR(5);

Select * from titles


CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id char(5) NOT NULL,
	birth_date DATE,
	first_name TEXT,
	last_name TEXT,
	sex char(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
UPDATE employees


Select * from employees

CREATE TABLE dept_manager(
	dept_no char(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(dept_no, emp_no)
);

SELECT * FROM dept_manager

CREATE TABLE salaries(
    emp_no INT NOT NULL PRIMARY KEY,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INT NOT NULL
);
SELECT * FROM salaries
