-- Check if UniversityDB exists, and drop it if it does
DROP DATABASE IF EXISTS UniversityDB;

-- Create the UniversityDB database
CREATE DATABASE UniversityDB;

-- Use the UniversityDB database
USE UniversityDB;

-- Create the students table
CREATE TABLE students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Major VARCHAR(50)
);

-- Insert data into the students table
INSERT INTO students (StudentID, FirstName, LastName, Age, Major) VALUES 
(12345, 'Patrick', 'Obama', 19, 'Computer Science'),
(67890, 'Emma', 'Watson', 20, 'Literature'),
(13579, 'John', 'Doe', 22, 'Computer Science'),
(24680, 'Alice', 'Smith', 21, 'Mathematics'),
(98765, 'Michael', 'Johnson', 23, 'Chemistry');

-- Add a GPA column to the students table
ALTER TABLE students ADD COLUMN GPA DECIMAL(4,2);

-- Update GPA values for students
UPDATE students SET GPA = 4.77 WHERE StudentID = 12345;
UPDATE students SET GPA = 4.01 WHERE StudentID = 67890;
UPDATE students SET GPA = 3.67 WHERE StudentID = 13579;
UPDATE students SET GPA = 2.45 WHERE StudentID = 24680;
UPDATE students SET GPA = 3.99 WHERE StudentID = 98765;

-- Rename the students table
RENAME TABLE students TO EnrolledStudents;

-- Create the Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    Credits INT
);

-- Insert data into the Courses table
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits) VALUES 
(1, 'Mathematics', 'Prof. Smith', 3),
(2, 'Computer Science', 'Dr. Johnson', 4),
(3, 'Literature', 'Dr. Brown', 3);

-- Drop the EnrolledStudents table
DROP TABLE EnrolledStudents;
