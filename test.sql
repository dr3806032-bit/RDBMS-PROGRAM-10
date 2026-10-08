USE CollegeDB;

-- Test 1: Course records
SELECT CASE
    WHEN COUNT(*) = 3
    THEN 'PASS: Course table has 3 records'
    ELSE 'FAIL: Course table record count is incorrect'
END AS Result
FROM Course;

-- Test 2: Enrollment records
SELECT CASE
    WHEN COUNT(*) = 4
    THEN 'PASS: Enrollment table has 4 records'
    ELSE 'FAIL: Enrollment table record count is incorrect'
END AS Result
FROM Enrollment;

-- Test 3: LEFT JOIN
SELECT CASE
    WHEN COUNT(*) = 4
    THEN 'PASS: LEFT JOIN is correct'
    ELSE 'FAIL: LEFT JOIN is incorrect'
END AS Result
FROM (
    SELECT c.CourseID, e.EnrollmentID
    FROM Course c
    LEFT JOIN Enrollment e
    ON c.CourseID = e.CourseID
) AS LeftJoinResult;

-- Test 4: RIGHT JOIN
SELECT CASE
    WHEN COUNT(*) = 4
    THEN 'PASS: RIGHT JOIN is correct'
    ELSE 'FAIL: RIGHT JOIN is incorrect'
END AS Result
FROM (
    SELECT c.CourseID, e.EnrollmentID
    FROM Course c
    RIGHT JOIN Enrollment e
    ON c.CourseID = e.CourseID
) AS RightJoinResult;
