-- sql is case sensitive --

/*
UPPERCASE: Keywords
LOWERCASE: Non-keywords
*/

/* USE exercise_hr;

SHOW TABLES; 

USE store; 

SELECT *
FROM customers
ORDER BY first_name ASC;

-- Use semicolon after query --
-- ASC for ascending order and DESC for decending --

USE store; 

SELECT *
FROM customers
ORDER BY last_name DESC; */

-- USE exercise_hr;

-- SELECT *
-- FROM employees
-- ORDER BY first_name DESC;

-- SELECT employee_id, first_name, last_name, salary
-- FROM employees
-- ORDER BY salary ASC;

-- USE store;

-- SELECT *
-- FROM customers
-- ORDER BY last_name DESC, birth_date DESC;

-- SELECT 2 * 2;

-- SELECT first_name,last_name, points
-- FROM customers;

-- select keyword is use for select the tables name

-- SELECT first_name, last_name, points, points * 1.1 AS 'discount_factor'
-- FROM customers; 

-- SELECT DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), birth_date)), '%Y')/1 AS age
-- FROM customers;

-- -- DISTINCT means "unique"

-- SELECT DISTINCT state
-- FROM customers;

-- SELECT 171 * 214 + 625 AS value

-- USE exercise_hr;

-- -- SELECT FIRST_NAME, LAST_NAME -- AS FIRSTNAME, LASTNAME
-- -- FROM employees;

-- HOME WORK --


-- SELECT 171*214+625 AS value;

USE exercise_hr;

-- SELECT first_name AS "FIRST NAME", last_name AS "LAST NAME"
-- FROM employees;

-- SELECT first_name, last_name, salary, salary*.15 PF
-- FROM employees;

-- SELECT department_id
-- FROM employees;

-- USE store;

-- SELECT *
-- FROM customers
-- WHERE state = "FL";
-- WHERE points > 3000;
-- WHERE birth_date >= "1990-01-01";
-- WHERE points > 3000 or birth_date >= "1990-01-01";
-- WHERE birth_date > "1989-01-01" or points > 3000 and state = "VA";
-- WHERE points < 4000 or (birth_date >= "1990-01-01" and state = "VA");
-- WHERE (points < 4000 and birth_date >= "1990-01-01") or state = "VA";
-- WHERE NOT (state = "FL");

-- ORDER OF LOGICAL OPERATORS
-- 1. AND
-- 2. OR
-- 3. NOT

-- USE exercise_hr;
-- SELECT first_name, last_name, department_ID
-- FROM employees
-- WHERE department_ID = 30 or department_ID = 100
-- ORDER BY department_ID ASC;

-- USE store;
-- SELECT *
-- FROM customers
-- -- WHERE state = "FL" or state = "VA" or state = "GA";
-- WHERE state IN ("FL", "VA", "GA");

-- USE inventory;
-- SELECT *
-- FROM products
-- WHERE quantity_in_stock IN (49, 38, 72);

-- USE exercise_hr;
-- SELECT *
-- FROM employees
-- -- WHERE points >= 3000 and points <= 10000
-- WHERE points BETWEEN 3000 AND 10000;

-- WHERE birth_date NOT BETWEEN "1990-01-01" AND "2000-01-01";

-- WHERE last_name LIKE "%y";
-- WHERE last_name LIKE "_____y";

/* 
	% - any number of characters
    _ - single character (specificly)
*/

-- WHERE state LIKE "%A";
-- WHERE last_name LIKE "b______y";

-- (^ Starting with) ($ Ending with)  

-- WHERE last_name REGEXP '^Mac';

-- WHERE first_name REGEXP 'elka|ambur'
-- WHERE last_name REGEXP 'ey$|on$'
-- WHERE last_name REGEXP '^my|^se'
-- WHERE last_name REGEXP 'br|bu'

-- WHERE last_name REGEXP 'ae|be|ce|de|ee|fe|ge|he'
-- WHERE last_name REGEXP '[abcdefgh]e';
-- WHERE last_name REGEXP '[a-h]e';

-- WHERE last_name REGEXP '[gim]e';

-- WHERE last_name REGEXP 'ey|on';

-- WHERE last_name REGEXP '^[a-z]{6}$';

-- WHERE last_name REGEXP '(b.*[ru])'

-- WHERE last_name LIKE %b%r% OR last_name LIKE %b%u%;

-- USE store;
-- EXPLAIN
-- SELECT *
-- FROM customers

-- WHERE phone is not null;

-- ORDER BY points DESC LIMIT 3;

-- The limit clause should always come at the end.

-- LIMIT 2,3;

-- The MOD() function returns the remainder of a number divided by another number.
-- where mod(id,2) = 0;
		
-- USE exercise_hr;
-- EXPLAIN
-- SELECT *
-- FROM employees
-- -- WHERE first_name = 'Lex';
-- -- WHERE employee_id = 102;
-- WHERE last_name = 'De Haan';

-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- select count(city) - count(distinct city)
-- from station

USE exercise_hr;

SELECT *
FROM employees INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE department_name = 'IT';

SELECT first_name, last_name, e.department_id, department_name
FROM employees AS e INNER JOIN departments as d
ON e.department_id = d.department_id;

-- find the count of employees in every department

SELECT department_id, COUNT(*) AS no_of_employees
FROM employees
GROUP BY department_id;

-- What we have use in the group by can be only use in select

SELECT *
FROM employees AS e INNER JOIN employees AS d
ON e.employee_id = d.manager_id;

SELECT e.employee_id AS 'Employee ID',
CONCAT(e.first_name, e.last_name) AS 'Employee name', 
m.employee_id AS 'Manager ID', 
CONCAT(m.first_name, m.last_name) AS 'Manager name'
FROM employees AS e INNER JOIN employees AS m
ON e.manager_id = m.employee_id;

-- Write a query to find the name (first_name, last name), department ID and name of all the employees.





