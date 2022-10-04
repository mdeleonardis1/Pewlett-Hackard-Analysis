-- Table 1
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
--INTO retirement_titles
FROM employees as e
RIGHT JOIN titles AS t
ON (e.emp_no = t.emp_no)
INNER JOIN salaries AS s
ON (e.emp_no = s.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');
select * from employees


-- Table 2 
select distinct on
(e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
t.title
INTO unique_titles
FROM employees as e
RIGHT JOIN titles AS t
ON (e.emp_no = t.emp_no)
INNER JOIN salaries AS s
ON (e.emp_no = s.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND t.to_date = ('9999-01-01');


--Table 3 
select count(ut.emp_no), ut.title
into retiring_titles
from unique_titles as ut
GROUP BY ut.title
ORDER BY "count" DESC;

--Table 4

-- Deliverable 2.
-- Create a table with emp_no, first & last name, title, from and to dates
-- where dob in 1965
SELECT distinct on (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	t.from_date,
	t.to_date,
	t.title
--INTO mentorship
FROM employees AS e
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND t.to_date = '9999-01-01';


Table 5
SELECT distinct on (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	t.from_date,
	t.to_date,
	t.title
--INTO young_employess
FROM employees AS e
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (t.from_date BETWEEN '2000-01-01' AND '2023-01-01')
AND t.to_date = '9999-01-01';
select * from employees



--Table 6
select count(ye.emp_no), ye.title
into ye_titles
from young_employees as ye
GROUP BY ye.title
ORDER BY "count" DESC;

