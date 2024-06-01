
INSERT INTO STUDENTS (f_name, l_name, dob, email) VALUES
('Mohammed', 'Hani', '1999-12-24', 'mo@email.com'),
('Bruce', 'Wayne', '2003-09-03', 'batman@email.com'),
('John', 'Cena', '1975-05-15', 'john@email.com'),
('Peter', 'Parker', '1990-11-12', 'john@email.com'),
('Nolan', 'Grayson', '1970-06-05', 'ormniman@email.com');

INSERT INTO TEACHERS (f_name, l_name) VALUES
('John', 'Smith'),
('Beck', 'Sally'),
('Michael', 'Hill');

INSERT INTO SUBJECTS (subject_name, teacher_id, area) VALUES
('Maths', 1, 'Maths R54'),
('Science', 2, 'Science R3'),
('IT', 1, 'Computer Science R51'),
('Physical Education', 3, 'Stadium');

INSERT INTO ENROLLMENTS (student_id, subject_id, enrollment_date) VALUES
(1, 1, DEFAULT),
(1, 2, '2024-01-01'),
(4, 3, '2017-06-02'),
(4, 4, DEFAULT),
(2, 3, DEFAULT),
(2, 4, DEFAULT),
(3, 4, DEFAULT),
(3, 1, DEFAULT),
(5, 4, DEFAULT),
(5, 1, DEFAULT);


UPDATE STUDENTS
SET dob = '1995-06-04'
WHERE student_id = 2;

UPDATE SUBJECTS
SET subject_name = 'Programming'
WHERE subject_id = 3;

DELETE FROM ENROLLMENTS
WHERE enrollment_id = 1 OR enrollment_id = 2;

DELETE FROM STUDENTS
WHERE student_id = 3;