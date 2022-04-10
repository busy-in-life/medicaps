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
select * from student;
create table faculty(Faculty_id mediumint, Name char(30), Gender char(1), Age int, Dept varchar(10), Salary float(5, 2), Year_joined year);
desc faculty;
insert into faculty values(101, "Rohit Mahajan", "M", 30, "ME", 344.9,'2008');
 insert into faculty values(106, "Monika Jain", "F", 25, "CSE", 548.0,'2009');
 insert into faculty values(102, "Kiran Talwariya", "F", 34, "IT", 783.0,'2012');
 insert into faculty values(110, "Jitendra Sharma", "M", 45, "CE", 993.0,'2005');
 insert into faculty values(107, "Sheetal Agrawal", "F", 40, "AU", 678.0,'2009');
 insert into faculty values(105, "Rahul Sharma", "M", 51, "ME", 693.0,'2010');
 select * from faculty;
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
update faculty set Name = "Karan Singh" where Faculty_id = 102;
select distinct name from student;
 select distinct name and enrollment_num from student;
select * from student where gender='M';
 select * from student where branch='CSE';
 select name from student where branch='CSE';
 select * from student where name like 'D%'; 
 select * from student where branch like 'CSE%';
 select enrollment_num, name from student where branch='CSE';
 select * from faculty where Year_joined between 2000 and 2009;
select * from faculty order by faculty_id;
 select * from student order by enrollment_num;
select max(salary) from faculty;
 select min(age) from student;
 select avg(age) from student;
 select sum(salary) from faculty;
alter table faculty add dob date after Age;
alter table faculty modify Faculty_id varchar(10);
alter table faculty change column dob DOB date;
alter table faculty drop column Salary;
alter table faculty add primary key(Faculty_id);
alter table student add primary key(enrollment_num);
delete from student where name = "Anshika Gupta";
delete from student where enrollment_num = 59;
create table cs_dept(id int primary key, fname char(20) unique key, lname char(20), age smallint, dob date not null);
insert into cs_dept values(201, "Londyn", "Benson", 22,"2000-09-07");
insert into cs_dept values(202, "Justice", "Boyd", 23,"1999-07-23");
insert into cs_dept values(203, "Maddison", "Atkins", 22,"2000-09-16");
insert into cs_dept values(204, "Kobe", "Olsen", 24,"1998-07-15");
insert into cs_dept values(205, "Angela", "Juarez", 20,"2001-05-08 ");
insert into cs_dept values(206, "Angel", "Lee", 20,"2001-08-03");
insert into cs_dept values(207, "Braeden", "Wiley", 22,"1999-05-27");
insert into cs_dept values(208, "Killian", "Calhoun", 20,"2001-03-02");
insert into cs_dept values(209, "Cheyanne", "Fisher", 20,"2001-03-02");
insert into cs_dept values(210, "Bridget", "Horton", 21,"2000-08-29");
insert into cs_dept values(211, "Leyla", "Webster", 22,"1999-05-16");
