--find number of assistant engineers
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO unique_emp_title
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no);

-- number of employees by title
SELECT COUNT(uq.title),
	uq.title
--INTO retiring_titles
FROM unique_emp_title as uq
GROUP BY uq.title
ORDER BY COUNT(uq.title) DESC;






SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--Note, instructions do not ask me to filter by current employees or hire date
ORDER BY e.emp_no ASC;

select count(emp_no) from unique_titles;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no ASC, rt.to_date DESC;

--Write query to find number of employees by recent job title who are about to retire
SELECT COUNT(ut.title),
	ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;



--Query to create a table to contain employees who are eligible to participate in a mentorship program
--Born between January 1, 1965 and December 31, 1965.
SELECT DISTINCT ON(e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
--INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no) = (de.emp_no)
INNER JOIN titles as t
ON (e.emp_no) = (t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC
	
SELECT COUNT(mentorship_eligibility.emp_no)
FROM mentorship_eligibility
;

SELECT * FROM mentorship_eligibility;

--Number of mentors by title
SELECT COUNT(me.title),
	me.title
--INTO retiring_titles
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;

--expand mentorship eligibility
SELECT DISTINCT ON(e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO expanded_mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no) = (de.emp_no)
INNER JOIN titles as t
ON (e.emp_no) = (t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1960-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC

--EXPANDED Number of mentors by title
SELECT COUNT(me.title),
	me.title
--INTO retiring_titles
FROM expanded_mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;
