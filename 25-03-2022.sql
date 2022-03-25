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
















