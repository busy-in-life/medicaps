create database college;
use college;
create table student(enrollment_num int, name char(20), gender char(1), age int, branch char(10));
desc student;
insert into student values(34, "Garvit", "M", 18, "CSE");
insert into student values(44, "Aayushi", "F", 17, "EC");
insert into student values(47, "Kratik", "M", 19, "ME");
insert into student values(59, "Diksha", "F", 18, "AU");
insert into student values(39, "Gaurav", "M", 18, "CSBS");
insert into student values(67, "Mohit", "M", 19, "IT");
insert into student values(140, "Ram Sharma", "M", 18, "CSE");
insert into student values(150, "Devansh Singh", "M", 19, "ME");
insert into student values(155, "Shruti Malviya", "F", 19, "CE");
insert into student values(159, "Dipika Jain", "F", 19, "IT");
insert into student values(170, "Sakshi Sharma", "F", 18, "AU");
update student set gender = 'F' where name = 'Anshika Gupta';
update student set age=19 where enrollment_num in (34, 140, 59, 170);
update student set age=18 where enrollment_num not in (34, 140, 59, 170);
update student set name = "Diksha Rathore" where name = "Diksha";
update student set name = "Neha Reddy" where name = "Neha";
update student set name = "Gaurav Sharma" where name = "Gaurav";
update student set name = "Garvit Paliwal" where name = "Garvit";
update student set name = "Kratik Mathur" where name = "Kratik";
update student set name = "Aayushi Talreja" where name = "Aayushi";
update student set name = "Mohit Pherwani" where name = "Mohit";
CREATE VIEW twotable AS SELECT student.name, student.branch FROM student; 
SELECT * FROM twotable;