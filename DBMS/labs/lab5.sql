system clear;
create database company;
use company;
create table customers(customerID int primary key, fname char(20) unique key, lname char(20));
desc customers;
insert into customers values(100, "Monika", "Jain");
insert into customers values(101, "Salmon", "Khan");
insert into customers values(102, "Udit", "Sathe");
insert into customers values(103, "Utkarsh", "Chourasia");
insert into customers values(104, "Muskan", "Jain");
insert into customers values(105, "Tejas", "Shah");
insert into customers values(106, "Sneha", "Verma");
insert into customers values(107, "Vanhika", "Juneja");
insert into customers values(108, "Sparsh", "Garg");
insert into customers values(109, "Ujjwal", "Pawar");
insert into customers values(110, "Tanish", "Kohser");

create table orders(customerCODE  int primary key, orderID int );
insert into orders values(100, 1001);
insert into orders values(101, 1002);
insert into orders values(102, 1003);
insert into orders values(103, 1004);
insert into orders values(104, 1005);

SELECT * FROM customers INNER JOIN orders ON  customers.customerID=orders.customerCODE;
SELECT * FROM customers LEFT JOIN orders ON customers.customerID = orders.customerCODE;
SELECT * FROM customers RIGHT JOIN orders ON customers.customerID = orders.customerCODE;
SELECT * FROM customers CROSS JOIN orders;
