
SELECT * FROM TEACHERS;

SELECT area from SUBJECTS;

SELECT * FROM SUBJECTS ORDER BY subject_name;

SELECT f_name, l_name, dob FROM STUDENTS ORDER BY dob DESC;

SELECT * FROM ENROLLMENTS WHERE student_id = 4 OR student_id = 5;

SELECT * FROM STUDENTS  WHERE dob < '2000-01-01' AND dob > '01/01/1990';

SELECT * FROM STUDENTS WHERE l_name LIKE '%A';