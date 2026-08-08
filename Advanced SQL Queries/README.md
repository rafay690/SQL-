# Advanced SQL Queries

A MySQL lab demonstrating table creation, data insertion, filtering, sorting, aggregation, grouping, and table modification operations.

## Concepts Practiced

- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- DISTINCT
- LIKE
- BETWEEN
- Aggregate Functions (COUNT, AVG, SUM)
- GROUP BY
- HAVING
- ALTER TABLE
- CONCAT

## Files

- `Advanced SQL Queries.sql` - Complete SQL script
- Screenshots showing query execution and results

---

## Step 1: Create Employee Table and Insert Records

Creates the Employees table and inserts sample employee data.

![Create Table](create table employees and insert records.png)

---

## Step 2: View Table Structure

Displays all columns and datatypes in the Employees table.

![Describe Employees](describe employees result grid.png)

---

## Step 3: Display Selected Employee Details

Shows employee names, designations, and departments.

![Selected Employee Details](display selected employee details.png)

---

## Step 4: Display Employees Ordered by Hire Date

Lists employees sorted by hire date in descending order.

![Ordered by Hire Date](display employees ordered by hire date.png)

---

## Step 5: Display Unique Departments

Uses DISTINCT to show unique department names.

![Unique Departments](display unique departments.png)

---

## Step 6: Employees Earning Less Than 40000 Hired During 2018

Uses WHERE and BETWEEN conditions.

![Salary and Date Filter](employees earning less than 40000 hired during 2018.png)

---

## Step 7: Cities Containing Letter 'r' or 'i'

Uses LIKE operator for pattern matching.

![City Search](cities containing the letters r or i.png)

---

## Step 8: Employees Hired Between Specified Dates

Filters employees using date ranges and sorts results.

![Hire Date Filter](employees hired between specified dates.png)

---

## Step 9: Managers Located in Lahore

Uses multiple WHERE conditions.

![Managers in Lahore](managers located in lahore.png)

---

## Step 10: Calculate Bonus and New Salary

Calculates a 20% bonus and updated salary using expressions.

![Bonus Calculation](calculate bonus 20 percent and new salary.png)

---

## Step 11: Add Full Name Column

Modifies table structure by adding a new column.

![Add Full Name Column](alter table add first and last name.png)

---

## Step 12: Populate Full Name Using CASE Statement

Updates employee_name values for existing records.

![Populate Names](populate full name using case statement.png)

---

## Step 13: Display Concatenated Employee Details

Uses CONCAT to combine employee information into a single string.

![Concat Employee Details](concat employee details display.png)

---

## Step 14: Count Total Auditors

Uses COUNT() to determine the number of auditors.

![Total Auditors](count total auditors.png)

---

## Step 15: Count Employees by City and Department

Uses GROUP BY and COUNT().

![Employee Count](count employees by city and department.png)

---

## Step 16: Average Salary by Department

Uses AVG() with GROUP BY.

![Average Salary Department](average salary by department.png)

---

## Step 17: Count Long-Term Employees

Counts employees with more than 8 years of service.

![Long Term Employees](count long term employees.png)

---

## Step 18: Total Salary Expense by Designation

Uses SUM() and GROUP BY.

![Salary Expense](total salary expense by designation.png)

---

## Step 19: Count Total Employees

Displays the total number of employee records.

![Total Employees](count total employees.png)

---

## Step 20: Average Salary by City and Department

Uses GROUP BY and HAVING clause.

![Average Salary by City](average salary by city and department having.png)

---

## Additional Work

The following screenshots document schema modification attempts and syntax troubleshooting during development:

- add full name column syntax error.png
- drop first last name and add full name column.png

These were included for learning and debugging purposes.

## Technologies Used

- MySQL
- SQL
- MySQL Workbench

## Learning Outcomes

This lab demonstrates practical use of SQL queries for:

- Data retrieval
- Filtering and sorting
- Aggregate functions
- Grouping data
- Table modification
- String manipulation
- Database analysis
