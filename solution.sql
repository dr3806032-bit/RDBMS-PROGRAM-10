CREATE DATABASE deepakDB;

USE deepakDB;

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);

INSERT INTO Course (CourseID, CourseName, Credits)
VALUES
(201, 'Database Systems', 4),
(202, 'Data Structures', 3),
(203, 'Mathematics', 4);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Insert Enrollment Records
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID)
VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);

SELECT 
    c.CourseID,
    c.CourseName,
    c.Credits,
    e.EnrollmentID,
    e.StudentID
FROM Course c
LEFT JOIN Enrollment e
ON c.CourseID = e.CourseID;

SELECT 
    c.CourseID,
    c.CourseName,
    c.Credits,
    e.EnrollmentID,
    e.StudentID
FROM Course c
RIGHT JOIN Enrollment e
ON c.CourseID = e.CourseID;
