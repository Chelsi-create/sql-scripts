USE employees;

SELECT 
    first_name, last_name
FROM
    employees;

SELECT 
    *
FROM
    employees;
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis';
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';
    

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';


SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' OR first_name = 'Elvis';
    
    
SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND (gender = 'M'
        OR gender = 'F');
        
        
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'Mark'
        OR first_name = 'Nathan';
        

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark' , 'Nathan');
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar');
    
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('mar_'); 
    
    
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;


SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;


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
	m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
FROM
	dept_manager_dup m
		JOIN
	departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

