-- Create Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    birth_date DATE,
    hire_date DATE,
    department VARCHAR(50),
    city VARCHAR(50)
);
-- Insert employee records
INSERT INTO Employees VALUES
(1, 'Ahmed', 'Khan', 'Manager', 55000.00, '1985-05-12', '2017-03-15', 'Sales', 'Lahore'),
(2, 'Sara', 'Ali', 'Auditor', 45000.00, '1990-08-22', '2018-11-10', 'Finance', 'Karachi'),
(3, 'Bilal', 'Sheikh', 'Developer', 38000.00, '1995-01-10', '2018-06-15', 'IT', 'Lahore'),
(4, 'Zainab', 'Malik', 'Manager', 60000.00, '1982-12-05', '2016-02-20', 'HR', 'Lahore'),
(5, 'Usman', 'Pervaiz', 'Clerk', 35000.00, '1998-03-30', '2018-09-12', 'Admin', 'Islamabad'),
(6, 'Maria', 'Arshad', 'Auditor', 42000.00, '1992-07-14', '2019-01-05', 'Finance', 'Quetta'),
(7, 'Hamza', 'Raza', 'Manager', 40000.00, '1988-11-11', '2017-10-01', 'Sales', 'Rawalpindi'),
(8, 'Dua', 'Fatima', 'Intern', 25000.00, '2000-05-05', '2020-02-15', 'IT', 'Multan');
-- Display table structure
DESCRIBE Employees;

-- Display selected employee details
SELECT first_name, last_name, designation, department
FROM Employees;

-- Display employees ordered by hire date (latest first)
SELECT first_name, last_name, salary, hire_date
FROM Employees
ORDER BY hire_date DESC;

-- Display unique departments
SELECT DISTINCT department
FROM Employees;

-- Employees earning less than 40,000 hired during 2018
SELECT *
FROM Employees
WHERE salary < 40000
AND hire_date BETWEEN '2018-01-01' AND '2018-12-31';

-- Cities containing the letters 'r' or 'i'
SELECT DISTINCT city
FROM Employees
WHERE city LIKE '%r%'
OR city LIKE '%i%';

-- Employees hired between specified dates
SELECT department, first_name, last_name, hire_date, salary
FROM Employees
WHERE hire_date BETWEEN '2016-02-01' AND '2018-10-31'
ORDER BY hire_date DESC, salary ASC;

-- Managers located in Lahore
SELECT *
FROM Employees
WHERE designation = 'Manager'
AND city = 'Lahore';

-- Calculate bonus (20%) and new salary
SELECT first_name,
       last_name,
       designation,
       salary,
       salary * 0.20 AS Bonus,
       salary * 1.20 AS New_Salary
FROM Employees
WHERE designation IN ('Manager', 'Auditor');

-- drop first/last_name & Add full name column
ALTER TABLE Employees
drop column first_name,
drop column last_name;
ALTER TABLE Employees
ADD employee_name VARCHAR(100);
describe Employees;

-- Populate full name column
UPDATE Employees
SET employee_name = CONCAT(first_name, ' ', last_name);
UPDATE Employees
SET employee_name =
CASE employee_id
    WHEN 1 THEN 'Ahmed Khan'
    WHEN 2 THEN 'Sara Ali'
    WHEN 3 THEN 'Bilal Sheikh'
    WHEN 4 THEN 'Zainab Malik'
    WHEN 5 THEN 'Usman Pervaiz'
    WHEN 6 THEN 'Maria Arshad'
    WHEN 7 THEN 'Hamza Raza'
    WHEN 8 THEN 'Dua Fatima'
END;
select * from Employees;

-- Display updated structure
Alter table Employees
add first_name VARCHAR(100),
add last_name VARCHAR(100);
DESC Employees;

-- Display employee details using CONCAT
SELECT CONCAT(employee_name, ', ', designation, ', ', department)
AS Employee_Details
FROM Employees;

-- Count total auditors
SELECT COUNT(*) AS Total_Auditors
FROM Employees
WHERE designation = 'Auditor';

-- Count employees by city and department
SELECT city,
       department,
       COUNT(*) AS Number_of_Employees
FROM Employees
GROUP BY city, department;

-- Calculate average salary by department
SELECT department,
       AVG(salary) AS Average_Salary
FROM Employees
GROUP BY department;

-- Count employees with more than 8 years of service
SELECT department,
       COUNT(*) AS Long_Term_Employees
FROM Employees
WHERE DATEDIFF(CURDATE(), hire_date) / 365 > 8
GROUP BY department;

-- Calculate total salary expense by designation
SELECT designation,
       SUM(salary) AS Total_Salary_Expense
FROM Employees
GROUP BY designation
ORDER BY Total_Salary_Expense DESC;

-- Count total employees
SELECT COUNT(*) AS Number_of_Employees
FROM Employees;

-- Average salary by city and department
SELECT city,
       department,
       ROUND(AVG(salary), 2) AS Average_Salary
FROM Employees
GROUP BY city, department
HAVING AVG(salary) >= 40000;