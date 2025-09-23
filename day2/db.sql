create database student_course_db;
use student_course_db;

CREATE TABLE Students_1NF (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50)
);

CREATE TABLE Instructors_3NF (
    Instructor_ID INT PRIMARY KEY,
    Instructor_Name VARCHAR(50)
);

CREATE TABLE Courses_3NF (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Instructor_ID INT,
    FOREIGN KEY (Instructor_ID) REFERENCES Instructors_3NF(Instructor_ID)
);

CREATE TABLE StudentCourses_2NF (
    Student_ID INT,
    Course_ID INT,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students_1NF(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses_3NF(Course_ID)
);

show tables;

desc StudentCourses_2NF;
desc Students_1NF; -- student name
desc Courses_3NF;  -- course name
desc Instructors_3NF; -- instructor name

INSERT INTO Students_1NF VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alex Brown');

select * from Students_1NF;

INSERT INTO Courses_3NF VALUES
(101, 'Math', 1),
(102, 'Physics', 2),
(103, 'Chemistry', 3);

select * from Courses_3NF;

INSERT INTO Instructors_3NF VALUES
(1, 'Mr. Alan'),
(2, 'Mrs. Smith'),
(3, 'Dr. White');

select * from Instructors_3NF;

INSERT INTO StudentCourses_2NF VALUES
(1, 101),
(1, 102),
(2, 101),
(3, 102),
(3, 103);

select * from StudentCourses_2NF; 