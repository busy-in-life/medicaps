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
insert into student values(140, "Ram", "M", 18, "CSE");
insert into student values(150, "Devansh", "M", 19, "ME");
insert into student values(155, "Shruti", "F", 19, "CE");
insert into student values(159, "Dipika", "F", 19, "IT");
insert into student values(170, "Sakshi", "F", 18, "AU");

DELIMITER $$
CREATE PROCEDURE getName()
BEGIN
SELECT name FROM student WHERE  age>18;
END $$
DELIMITER ;

DELIMITER &&  
CREATE PROCEDURE getAge (IN var1 INT)  
BEGIN  
    SELECT name, age FROM student LIMIT var1;  
END &&  
DELIMITER ; 

CALL getName();
CALL getAge(5);