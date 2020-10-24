SELECT
	e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    dm.from_date
FROM
	employees e
		LEFT JOIN
	dept_manager dm ON e.emp_no = dm.emp_no
WHERE
	e.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC,
e.emp_no;


SELECT
	e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
	employees e
		JOIN
	dept_manager dm ON e.emp_no = dm.emp_no;
    
    
SELECT
	e.emp_no, e.first_name, e.last_name, s.salary
FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
WHERE
	s.salary > 145000;
    
    
set @@global.sql_mode :=
replace(@@global.sql_mode,
'ONLY_FULL_GROUP_BY', '');


set @@global.sql_mode :=
concat('ONLY_FULL_GROUP_BY',
@@global.sql_mode);


# CROSS JOIN
SELECT
	dm.*, d.*
FROM
	dept_manager dm
		CROSS JOIN
	departments d
ORDER BY dm.emp_no, d.dept_no;



SELECT
	dm.*, d.*
FROM
	dept_manager dm,
    departments d
ORDER BY dm.emp_no, d.dept_no;

SELECT
	dm.*, d.*
FROM
	dept_manager dm
		INNER JOIN
	departments d
ORDER BY dm.emp_no, d.dept_no;


SELECT
	e.*, d.*
FROM
	departments d
		CROSS JOIN
	dept_manager dm
		JOIN
	employees e ON dm.emp_no = e.emp_no
WHERE
	d.dept_no <> dm.dept_no
ORDER BY dm.emp_no, d.dept_no;


SELECT
	dm.*, d.*
FROM
	departments d
		CROSS JOIN
	dept_manager dm
WHERE
	d.dept_no = 'd009'
ORDER BY d.dept_name;


SELECT
	e.gender, AVG(s.salary) AS average_salary
FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
GROUP BY gender;


SELECT
	e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
	employees e
		JOIN
	dept_manager m ON e.emp_no = m.emp_no
		JOIN
	departments d ON m.dept_no = d.dept_no;




    