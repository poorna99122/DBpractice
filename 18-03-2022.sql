--To create a table 
create table customers 
(
first_name varchar2(30),
last_name  varchar2(30),
username varchar2(30),
password varchar2(30),
mobile_number char(10),
date_of_birth date 
);

--To get the structure of the table 
desc customer;

--Inserting data into the table 

INSERT INTO CUSTOMERS (first_name,last_name,username,password,mobile_number,date_of_birth) 
values ('poorna','chandra rao','poornachandra','poorna123','8185021930',TO_DATE('02-08-97','DD-MM-YY'));


INSERT INTO CUSTOMERS VALUES ('sravanthi','vallabhasetti','sravusravs','sravu123','6281964127',TO_DATE('22-10-97','DD-MM-YY'));

COMMIT; 


--Getting the data from the table 
select * from customers;

select first_name from customers;

select first_name,last_name from customers;

select * from customers where mobile_number='8185021930';

select first_name from customers where mobile_number='8185021930';


--Giving alias names 
select first_name as "FIRST NAME",LAST_NAME AS "LAST NAME" FROM CUSTOMERS;



























