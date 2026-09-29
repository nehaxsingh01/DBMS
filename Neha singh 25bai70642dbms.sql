-- Create a Course Registration System using Student and Course tables.
-- 1. Create both tables with suitable attributes.
-- 2. Use a Primary Key for each table and establish a Foreign Key relationship.
-- 3. Apply suitable NOT NULL, UNIQUE, DEFAULT, and CHECK constraints.
-- 4. Insert at least 5 students and 4 courses.
-- 5. Display students enrolled in a particular course.
-- 6. Update the course of a student.
-- 7. Delete a student using a suitable condition.
-- 8. Add a new column using ALTER.
-- 9. Rename one table using RENAME.
-- 10. Display the final records using SELECT.

CREATE DATABASE REGISTRATION_SYSTEM ;
USE  REGISTRATION_SYSTEM ;

CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL UNIQUE,
    credits INT CHECK (credits BETWEEN 1 AND 6 )
);
CREATE TABLE Student (
    Uid INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    college_name VARCHAR(100) DEFAULT 'CU' ,
    age INT CHECK (age >= 18),
    course_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
INSERT INTO Course
VALUES

(1 , 'DBMS',4) ,
( 2, 'Java' ,3),
 (3,' ADSA' ,4),
(4,'Maths', 3 );
INSERT INTO Student (Uid,Name,email,age,course_id)
VALUES 
(101,' Neha', 'Neha@gmail.com' , 20,1),
(102,'Ansh', 'ansh@gmail.com',21 , 4),
(103 ,'Dhuvi ' ,'dhuvi@gmail.com',20,3) ,
(104,'Harsh','Harsh@gmail.com',22,2),
(105, 'Chaitanya', 'chaitanya@gmail.com' , 19 , 4);
SELECT * FROM  Student where course_id = 4;
UPDATE Student SET course_id = 2
WHERE Uid = 101;

DELETE  FROM Student where uid = 105;
ALTER TABLE Student
ADD phone VARCHAR(15);
UPDATE Student SET phone = '1234' WHERE Uid = 101;
UPDATE Student SET phone = '56781' WHERE Uid = 102;
UPDATE Student SET phone = '4567' WHERE Uid = 103;
UPDATE Student SET phone = '3242' WHERE Uid = 104;
UPDATE Student SET Phone = '8932' where Uid = 105;

RENAME TABLE COURSE TO COURSES ; 
SELECT * FROM Student ;
SELECT * FROM Courses ;


