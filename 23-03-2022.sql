select * from customers;




-- ROLLBACK 
create table movie_new 
(
movie_name varchar2(30),
movie_desc  varchar2(30),
release_date date,
duration varchar2(30),
language  varchar2(30)
);


insert  into movie_new values('RRR','Action',TO_DATE('25-03-22','DD-MM-YY'),'3HRS','TELUGU');
insert  into movie_new values('BEAST','Action',TO_DATE('26-03-22','DD-MM-YY'),'3HRS','TAMIL');
SAVEPOINT P1;

insert  into movie_new values('MI','Action',TO_DATE('26-03-22','DD-MM-YY'),'3HRS','ENGLISH');
SAVEPOINT P2;

insert  into movie_new values('SUPERMAN','Action',TO_DATE('30-03-22','DD-MM-YY'),'3HRS','ENGLISH');
SAVEPOINT P3;


select * from movie_new;

ROLLBACK TO P1;
ROLLBACK TO P2;


DELETE FROM MOVIE_NEW WHERE MOVIE_NAME IN ('SUPERMAN','MI','BEAST');
COMMIT; 

ROLLBACK;





commit;



