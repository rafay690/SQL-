# Advanced SQL Queries
# Test

![Test](create table employees and insert records.png)

A MySQL lab demonstrating employee database creation, data retrieval, filtering, sorting, aggregation, grouping, and table modification operations.

## Concepts Practiced

- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- DISTINCT
- LIKE
- BETWEEN
- COUNT()
- AVG()
- SUM()
- GROUP BY
- HAVING
- ALTER TABLE
- CONCAT()

---

## 1. Create Employees Table and Insert Records

Creates the Employees table and inserts sample employee data.

![Create Table](create table employees and insert records.png)

---

## 2. Describe Employees Table

Displays the table structure and column information.

![Describe Employees](describe employees result grid.png)

---

## 3. Display Selected Employee Details

Retrieves employee names, designations, and departments.

![Selected Employees](display selected employee details.png)

---

## 4. Display Employees Ordered by Hire Date

Sorts employees by hire date in descending order.

![Ordered Employees](display employees ordered by hire date.png)

---

## 5. Display Unique Departments

Uses DISTINCT to retrieve unique departments.

![Unique Departments](display unique departments.png)

---

## 6. Employees Earning Less Than 40000 Hired During 2018

Filters employees using salary and hire date conditions.

![Salary Filter](employees earning less than 40000 hired during 2018.png)

---

## 7. Cities Containing 'r' or 'i'

Uses the LIKE operator for pattern matching.

![Cities Search](cities containing the letters r or i.png)

---

## 8. Employees Hired Between Specified Dates

Uses BETWEEN and ORDER BY.

![Date Filter](employees hired between specified dates.png)

---

## 9. Managers Located in Lahore

Filters employees using multiple conditions.

![Managers Lahore](managers located in lahore.png)

---

## 10. Calculate Bonus and New Salary

Calculates a 20% bonus and updated salary.

![Bonus Calculation](calculate bonus 20 percent and new salary.png)

---

## 11. Add Full Name Column

Demonstrates ALTER TABLE operations.

![Add Full Name Column](alter table add first and last name.png)

---

## 12. Populate Full Name Values

Updates employee_name values using a CASE statement.

![Populate Names](populate full name using case statement.png)

---

## 13. Display Concatenated Employee Details

Uses CONCAT() to combine employee information.

![Concat Details](concat employee details display.png)

---

## 14. Count Total Auditors

Counts all auditors in the database.

![Total Auditors](count total auditors.png)

---

## 15. Count Employees by City and Department

Uses GROUP BY with COUNT().

![Employee Count](count employees by city and department.png)

---

## 16. Average Salary by Department

Uses AVG() with GROUP BY.

![Average Salary Department](average salary by department.png)

---

## 17. Count Long-Term Employees

Counts employees with more than 8 years of service.

![Long Term Employees](count long term employees.png)

---

## 18. Total Salary Expense by Designation

Uses SUM() and GROUP BY.

![Salary Expense](total salary expense by designation.png)

---

## 19. Count Total Employees

Returns the total number of employees.

![Total Employees](count total employees.png)

---

## 20. Average Salary by City and Department

Uses GROUP BY and HAVING.

![Average Salary City Department](average salary by city and department having.png)

---

## Additional Work

The following screenshots document table modification attempts and troubleshooting during development:

### Syntax Error While Adding Full Name Column

![Syntax Error](add full name column syntax error.png)

### Drop First and Last Name Columns and Add Full Name Column

![Drop and Add Column](drop first last name and add full name column.png)

---

## Technologies Used

- MySQL
- SQL
- MySQL Workbench

## Learning Outcomes

This project demonstrates:

- Data retrieval and filtering
- Sorting records
- Aggregate functions
- Grouping and analysis
- Table modification
- String manipulation with CONCAT()
- Basic database management
