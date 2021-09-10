use employees;
show tables;

-- 1. Show all employees who were born before 1965-01-01
SELECT * FROM employees WHERE birth_date < '1965-01-01';

-- 2. Show all employees who are female and were hired after 1990
SELECT * FROM employees WHERE gender='f' AND hire_date > '1990-01-01';

-- 3. Show the first and last name of the first 50 employees whose last name starts with F
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'f%' LIMIT 50;

-- 4. Insert 3 new employees into the employees table. Their emp_no should be 100, 101, and 102. You can choose the rest of the data.
INSERT INTO employees VALUES (100, '1974-04-01', 'Jack', 'Johnson', 'M', '2019-03-06'), 
(101, '1975-03-20', 'Paul', 'Bennet', 'M', '2016-05-15'),
(102, '1977-10-12', 'Kimberly', 'Oneil', 'F', '2021-07-23');

SELECT * FROM employees WHERE emp_no IN (100, 101, 102);

-- 5. Change the employee's first name to Bob for the employee with the emp_no of 10023.
UPDATE employees SET first_name = 'Bob' WHERE emp_no = 10023;

SELECT * FROM employees WHERE emp_no = 10023;

-- 6. Change all employees hire dates to 2002-01-01 whose first or last names start with P.
UPDATE employees SET hire_date = '2002-01-01' WHERE first_name LIKE 'p%' OR last_name LIKE 'p%';

SELECT * FROM employees WHERE first_name LIKE 'p%' OR last_name LIKE 'p%';

-- 7. Delete all employees who have an emp_no less than 10000
SELECT * FROM employees WHERE emp_no < 10000;

DELETE FROM employees WHERE emp_no < 10000;

SELECT * FROM employees WHERE emp_no < 10000;

-- 8. Delete all employee who have an emp_no of 10048, 10099, 10234, and 20089.
SELECT * FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);

DELETE FROM employees WHERE emp_no = 10048 OR emp_no = 10099 OR emp_no = 10234 OR emp_no = 20089;

SELECT * FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);
