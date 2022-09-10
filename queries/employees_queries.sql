/* Average salary in the company */
drop view current_salaries; 

CREATE VIEW CURRENT_SALARIES AS SELECT employees.emp_no as "employeesID", max(salary) as "salary"
FROM employees, salaries
WHERE employees.emp_no = salaries.emp_no
GROUP BY employees.emp_no;

select avg( salary ) AS "average_salary" from current_salaries;

/* The youngest employee in the company */

SELECT * FROM employees where birth_date = (SELECT max(birth_date) FROM employees) ORDER BY employees.hire_date DESC LIMIT 1;