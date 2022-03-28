select * from movie_new;

create table test_notnull (
firstName varchar2(35),
secondName varchar2(35),
lastName varchar2(35),
phoneNumber number(10) not null
);


insert  into test_notnull values('poorna','chandra','rao',8185021930);
commit;


insert  into test_notnull values('poorna','chandra','rao',null);

select * from test_notnull;


alter table test_notnull modify lastName varchar2(35) not null;
commit;



-----------------------------------------------------------------


create table test_default (
firstName varchar2(35),
secondName varchar2(35) ,
lastName varchar2(35),
phoneNumber number(10) 
);


ALTER TABLE test_default
MODIFY secondName default  'pcr';
commit;

insert  into test_default(firstName,secondName,lastName,phoneNumber) values('poorna','','rao',8185021930);






select * from test_default; 

TRUNCATE TABLE test_default;
COMMIT;

insert  into test_default values('poorna','chandra','rao','');


create table test_employee (
firstName varchar2(35),
secondName varchar2(35),
lastName varchar2(35),
phoneNumber number(10) NOT NULL CHECK(LENGTH(phoneNumber)>5)
);

insert  into test_employee values('poorna','chandra','rao',818502);

DROP TABLE test_employee;

select * from test_employee;
truncate table test_default;


commit;

------------------------------------------------------------------------

create table test_unique(
firstName varchar2(35) UNIQUE,
secondName varchar2(35),
lastName varchar2(35),
phoneNumber number(10)
);


SELECT * FROM test_unique;

INSERT INTO test_unique VALUES ('Poorna','Chandra','Rao',8185021930);
INSERT INTO test_unique VALUES ('Poorna','Chandra','Rao',8185021930);

------------------------------------------------------------------------
--Overall summary 
select * from customers;
desc customers;

ALTER TABLE CUSTOMERS 
ADD UNIQUE (USERNAME);

DROP TABLE CUSTOMERS;


CREATE TABLE CUSTOMERS(
CUSTOMERID CHAR(5) PRIMARY KEY,
FIRSTNAME VARCHAR2(35) NOT NULL,
LASTNAME VARCHAR2(35),
USERNAME VARCHAR2(35) NOT NULL UNIQUE,
PASSWORD VARCHAR2(35) NOT NULL CHECK(LENGTH(PASSWORD)>5),
MOBILENUMBER CHAR(10) NOT NULL,
DATEOFBIRTH DATE NOT NULL,
USERTYPE VARCHAR2(35) DEFAULT 'User'
);

DESC CUSTOMERS;
SELECT * FROM CUSTOMERS;

DROP TABLE CUSTOMERS;
COMMIT;

truncate table customers;

--Testing Unique start
INSERT INTO CUSTOMERS (FIRSTNAME,LASTNAME,USERNAME,PASSWORD,MOBILENUMBER,DATEOFBIRTH) 
values ('Poorna','chandra rao','Ppoorna@123','pcr@123',8185021930,TO_DATE('02-08-97','DD-MM-YY'));

INSERT INTO CUSTOMERS (FIRSTNAME,LASTNAME,USERNAME,PASSWORD,MOBILENUMBER,DATEOFBIRTH) 
values ('Poorna','chandra rao','Ppoorna@123','pcr@123',8185021930,TO_DATE('02-08-97','DD-MM-YY'));

--Testing Unique end 

desc customers;
COMMIT;















