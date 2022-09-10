/* Average salary in the company */
DROP VIEW current_salaries; 

CREATE VIEW CURRENT_SALARIES AS SELECT employees.emp_no AS "employeesID", max(salary) AS "salary"
FROM employees, salaries
WHERE employees.emp_no = salaries.emp_no
GROUP BY employees.emp_no;

SELECT avg( salary ) AS "average_salary" FROM current_salaries;

/* The youngest employee in the company */

SELECT * FROM employees WHERE birth_date = (SELECT max(birth_date) FROM employees) ORDER BY employees.hire_date DESC LIMIT 1;