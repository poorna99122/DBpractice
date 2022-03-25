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
secondName varchar2(35),
lastName varchar2(35),
phoneNumber number(10) default '1111111111'
);


select * from test_default;

insert  into test_default values('poorna','chandra','rao','');


CREATE TABLE demo_tbl
(
salary number(8,2) DEFAULT 9500,
hire_date DATE DEFAULT '01-JAN-2011' ,
birthdate DATE DEFAULT SYSDATE
);


select * from demo_tbl;
















