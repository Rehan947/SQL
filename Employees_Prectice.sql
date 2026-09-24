create database emp_data;
use emp_data;

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    salary INT,
    age INT
);


INSERT INTO employees VALUES
(1, 'Amit', 'Ahmedabad', 30000, 25),
(2, 'Rahul', 'Mumbai', 45000, 32),
(3, 'Sneha', 'Delhi', 28000, 27),
(4, 'Priya', 'Pune', 35000, 29),
(5, 'Vikas', 'Ahmedabad', 40000, 35),
(6, 'Neha', 'Mumbai', 22000, 24),
(7, 'Arjun', 'Delhi', 50000, 40),
(8, 'Karan', 'Pune', 27000, 26),
(9, 'Pooja', 'Ahmedabad', 31000, 30),
(10, 'Rohit', 'Mumbai', 38000, 34),
(11, 'Anjali', 'Delhi', 26000, 23),
(12, 'Manish', 'Pune', 42000, 36),
(13, 'Sonia', 'Ahmedabad', 29000, 28),
(14, 'Deepak', 'Mumbai', 47000, 38),
(15, 'Kavita', 'Delhi', 33000, 31);

select*from employees;

-- 1. Display all employees who live in Ahmedabad.
select * from employees where city ="Ahmedabad";

-- 2. Show employees whose salary is greater than 30000.
select * from employees where salary > 30000;

-- 3. Display employees whose age is between 25 and 35.
select * from employees where age > 25 and age  < 35;

-- 4. Show employees who live in Mumbai or Delhi.
select * from employees where city = "Mumbai" or city = "Delhi";

-- 5. Display employees who do not live in Ahmedabad.
select * from employees where city != "Ahmedabad";

-- 6. Show employees whose salary is between 20000 and 40000.
select * from employees where salary < 2000 or salary > 4000;

-- 7. Display employees from Pune or Mumbai whose salary is greater than 25000.
select * from employees where city = "Pune" or city = "Mumbai" and salary > 25000;

-- 8. Show employees whose age is less than 30 and salary is greater than 25000.
select * from employees where age < 30 and salary > 25000;
	
-- 9. Display employees from Delhi whose age is less than 40.
select * from employees where city = "Delhi" and age < 40;

-- 10. Show employees who live in Ahmedabad, Pune, or Mumbai.
select * from employees where city in("Ahmedabad","Pune","Mumbai");

-- 11. Display the first 5 employees from the table.
SELECT * FROM employees LIMIT 5;

-- 12. Skip the first 5 records and display the next 5 employees.
SELECT* from employees order by id limit 5 offset 5;

-- 13. Increase the salary of all employees who live in Mumbai by 5000.
UPDATE employees SET salary = salary + 5000 WHERE city = 'Mumbai';

-- 14. Delete employees whose age is greater than 50.
DELETE from employees where age > 50;

-- 15. Count the total number of employees in the table.
select count(*) AS total_employees from employees;
 
-- 16. Display the maximum salary in the table.
SELECT MAX(salary) AS maximum_salary FROM employees;

-- 17. Display the minimum salary in the table.
SELECT MIN(salary) AS minimum_salary FROM employees;

-- 18. Show the average salary of employees.
Select AVG(salary) AS average_salary from employees;

-- 19. Display the total salary of all employees.
SELECT SUM(salary) AS total_salary  FROM employees;

-- 20. Show the list of unique cities available in the table.
SELECT DISTINCT city  FROM employees;


