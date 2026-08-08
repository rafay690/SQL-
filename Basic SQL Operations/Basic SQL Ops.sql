CREATE DATABASE prac2;
USE prac2;

-- Create student table
CREATE TABLE student (
    id INT,
    name VARCHAR(50),
    dob DATE
);

-- Display all records from student table
SELECT * FROM student;

-- Add GPA column
ALTER TABLE student
ADD gpa DECIMAL(3,2);

-- Insert student records
INSERT INTO student VALUES (1,'azaan','1888-09-01',0.23);
INSERT INTO student VALUES (2,'rafay','1777-08-02',4.00);

-- Display all records
SELECT * FROM student;

-- Update GPA of student with ID 1
UPDATE student
SET gpa = 2.0
WHERE id = 1;

-- Display updated records
SELECT * FROM student;

-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Insert another student record
INSERT INTO student VALUES (3,'muz','2003-04-09',3.33);

-- Update GPA of student with ID 3
UPDATE student
SET gpa = 3.0
WHERE id = 3;
select * from student;

-- Delete student with ID 3
DELETE FROM student
WHERE id = 3;

-- Display remaining records
SELECT * FROM student;

-- Remove all rows while keeping table structure
TRUNCATE TABLE student;

-- Search for a student named 'muz'
SELECT * FROM student
WHERE name = 'rafay';

-- Remove GPA column (run separately if needed)
ALTER TABLE student
DROP COLUMN gpa;
select * from student;