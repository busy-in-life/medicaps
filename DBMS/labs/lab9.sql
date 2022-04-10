create database college;
use college;
create table student(enrollment_num int primary key, full_name char(20), gender char(1), age int, branch char(10));
desc student;
insert into student values(101, "Garvit", "M", 18, "CSE");
insert into student values(106, "Shruti", "F", 19, "CSE");
insert into student values(110, "Ram", "M", 18, "CSE");
insert into student values(102, "Aayushi", "F", 17, "EC");
insert into student values(107, "Shruti", "F", 19, "EC");
insert into student values(105, "Devansh", "M", 19, "ME");
SET FOREIGN_KEY_CHECKS=0;
-- ### To just implement foreign key
create table faculty(Faculty_id int primary key, Name char(30), Gender char(1), Age int, branch char(10), Salary float(5, 2), Year_joined year,student_en int,  FOREIGN KEY (student_en) REFERENCES student(enrollment_num));
-- ### To just implement foreign key with on delete set null
create table faculty(Faculty_id int primary key, Name char(30), Gender char(1), Age int, branch char(10), Salary float(5, 2), Year_joined year,student_en int, FOREIGN KEY (student_en) REFERENCES student(enrollment_num) ON DELETE SET NULL);
-- ### To just implement foreign key with on delete cascade
create table faculty(Faculty_id int primary key, Name char(30), Gender char(1), Age int, branch char(10), Salary float(5, 2), Year_joined year, student_en int, FOREIGN KEY (student_en) REFERENCES student(enrollment_num) ON DELETE CASCADE );
desc faculty;
insert into faculty values(101, "Rohit Mahajan", "M", 30, "ME", 344.9,'2008', 101);
insert into faculty values(106, "Monika Jain", "F", 25, "CSE", 548.0,'2009', 106);
insert into faculty values(110, "Jitendra Sharma", "M", 45, "EC", 993.0,'2005', 102);
insert into faculty values(107, "Sheetal Agrawal", "F", 40, "AU", 678.0,'2009', 105);
insert into faculty values(105, "Rahul Sharma", "M", 51, "ME", 693.0,'2010', 105);
DELETE FROM student WHERE enrollment_num=101;
select * from student;
select * from faculty;