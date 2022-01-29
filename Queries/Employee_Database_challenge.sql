--Deliverable 1
--Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- Employee count by department number
SELECT distinct title FROM unique_titles;

--create a Retiring Titles table that contains the number of titles filled by employees who are retiring
SELECT count(emp_no),title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

--Deliverable 2
--Find out how many retiring employees are eligible for mentorship.
SELECT emp_no,
	first_name,
	last_name,
	birth_date
FROM employees;

SELECT from_date,to_date FROM dept_emp;

SELECT title FROM titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON(e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

--Creating a unique table for further analysis
-- It consists of emp_no,first_name,last_name,title,from_date,to_date,salary,dept_no, and dept_name of all the retiring employees of Pewlett-Hackard
SELECT DISTINCT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date,
	sl.salary,
	de.dept_no,
	d.dept_name
INTO unique_table
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
INNER JOIN salaries as sl
ON e.emp_no = sl.emp_no
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no AND de.to_date='9999-01-01'
INNER JOIN departments as d
ON de.dept_no = d.dept_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31' AND t.to_date='9999-01-01')
ORDER BY e.emp_no;

--Finding out how many employees are retiring from each department and what are the titles of those employees.
SELECT dept_name,title,COUNT(*)
FROM unique_table
GROUP BY dept_name, title
ORDER BY dept_name, title;

--Avareage salary per department per title
SELECT dept_name,title,COUNT(*),round(avg(salary),2)
FROM unique_table
GROUP BY dept_name, title
ORDER BY dept_name, title;
