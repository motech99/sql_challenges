
DROP TABLE ENROLLMENTS;
DROP TABLE SUBJECTS;
DROP TABLE TEACHERS;
DROP TABLE STUDENTS;


Create Table STUDENTS (
    student_id serial primary key,
    f_name text not null,
    l_name text not null,
    dob date
);

Create Table TEACHERS(
    teacher_id serial primary key,
    name text NOT NULL
);

Create Table SUBJECTS(
    subject_id serial primary key,
    subject_name text NOT NULL,
    teacher_id integer,

    foreign key (teacher_id) references TEACHERS(teacher_id) ON DELETE SET NULL
);

Create Table ENROLLMENTS(
    enrollment_id serial primary key,
    student_id integer NOT NULL,
    subject_id integer  NOT NULL,
    enrollment_date date DEFAULT CURRENT_DATE, 

    foreign key (student_id)  references STUDENTS (student_id) ON DELETE CASCADE,
    foreign key (subject_id) references SUBJECTS (subject_id) ON DELETE CASCADE
);

ALTER TABLE STUDENTS
ADD COLUMN email text NOT NULL;

ALTER TABLE TEACHERS
RENAME COLUMN name TO f_name;

ALTER TABLE TEACHERS
ADD COLUMN l_name text NOT NULL;

ALTER TABLE SUBJECTS
ADD COLUMN area text DEFAULT 'Databases';

