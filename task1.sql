USE employees_mod;
SELECT
	emp_no, from_date, to_date
FROM
	t_dept_emp;
    
    
    
SELECT DISTINCT
	emp_no, from_date, to_date
FROM
	t_dept_emp;
    
   
#Problem1 : Solution in sql
SELECT
	YEAR(d.from_date) AS calendar_year, e.gender, COUNT(e.emp_no) AS num_of_employees
FROM
	t_employees e
		JOIN
	t_dept_emp d ON d.emp_no = e.emp_no
GROUP BY calendar_year, e.gender
HAVING calendar_year >= 1990;








