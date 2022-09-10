-- Select statement to filter Mayumi Schueller
SELECT frist_name FROM employees 
/*
    Filter on first name and last name to limit amount the data returned
    and the focus the filtering on single person.
*/
WHERE first_name = 'Mayumi' AND last_name = 'Schueller';