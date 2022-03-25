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


