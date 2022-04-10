create database company;
use company;
create table customers(CustomerID int primary key, fname char(20) , Pincode int, ContactNo char(10), OrderAmount int);
SET GLOBAL local_infile=1;
-- quit or exit the application and 
-- login as this
-- mysql --local-infile=1 -u root -p1
-- then run these commands
LOAD DATA LOCAL INFILE "/root/mysql/task1.csv" INTO TABLE company.customers
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
use company;
SELECT * FROM customers;