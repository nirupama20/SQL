CREATE DATABASE Chubb;
USE Chubb; 
CREATE TABLE users (user_name VARCHAR(40),user_id INT(10),PRIMARY KEY (user_id));
INSERT INTO users VALUES('AA',101), ('BB',102),('CC',103),('DD',104),('EE',105);
CREATE TABLE codekata (number_of_problems_solved INT(10));
INSERT INTO codekata VALUES(5),(10),(3),(5),(7);
CREATE TABLE attendance (present INT(10));
INSERT INTO attendance VALUES(20),(22),(24),(25),(21);
CREATE TABLE topics (name_of_topic VARCHAR(40));
INSERT INTO topics VALUES('c'),('c++'),('sql'),('java'),('python');
CREATE TABLE tasks (assignment INT(10));
INSERT INTO tasks VALUES('5'),(10),(3),(5),(7);
CREATE TABLE company_drives (number_of_drives_attended INT(10), user_id INT(10));
INSERT INTO company_drives VALUES(3,100),(2,101),(4,103),(1,200),(4,105);
CREATE TABLE mentors (mentor_name VARCHAR(40), number_of_students INT(10));
INSERT INTO mentors VALUES('P',10),('Q',15),('R',20),('S',30),('T',40);
CREATE TABLE students_activated_courses (student VARCHAR(10),course_id INT(10));
INSERT INTO students_activated_courses VALUES('abc',109),('bcd',109),('cde',105),('def',105),('efg',103);
CREATE TABLE courses (name_of_course VARCHAR(40), course_id INT(10));
INSERT INTO courses VALUES('oop',109),('r',100),('dbms',103),('cd',105),('dsa',101);
SELECT SUM(number_of_problems_solved) FROM codekata;
SELECT * FROM company_drives;
SELECT users.user_name , company_drives.number_of_drives_attended FROM company_drives, users WHERE company_drives.user_id= users.user_id;
SELECT DISTINCT (mentor_name) FROM mentors;
SELECT * FROM mentors;
-- SELECT students_activated_courses.student,courses.name_of_course from courses FULL OUTER JOIN students_activated_courses ON courses.course_id = students_activated_courses.course_id group by name_of_course;
SELECT courses.name_of_course,students_activated_courses.student FROM students_activated_courses WHERE students_activated_course.course_id = courses.course_id;






