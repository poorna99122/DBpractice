create table theatres (theatre_name varchar2(20), no_of_seats number(3));
select * from movie_theatre;
Alter table theatres rename to movie_theatre;
commit;
Desc movie_theatre;



--Delete Operation 
DELETE FROM movie_theatre;


select * from customers;
Insert into customers (FIRST_NAME,LAST_NAME,USERNAME,PASSWORD,MOBILE_NUMBER,DATE_OF_BIRTH) values ('Dhoni','Dhoni','Dhoni','Dhoni123','9999999999',to_date('02-08-97','DD-MM-RR'));
Insert into customers (FIRST_NAME,LAST_NAME,USERNAME,PASSWORD,MOBILE_NUMBER,DATE_OF_BIRTH) values ('Virat','Virat','Virat','Virat123','8185021930',to_date('22-10-97','DD-MM-RR'));
delete from customers where first_name='Virat';
commit;





--Truncate 
create table inventory (ID NUMBER(2),NAME VARCHAR2(35));
SELECT * FROM INVENTORY;

INSERT INTO INVENTORY VALUES ('1','POORNA');
INSERT INTO INVENTORY VALUES ('2','CHANDRA');
COMMIT;

TRUNCATE TABLE INVENTORY;  -- Truncate doesn't destroys the whole table but it will delete the records in a table 




-- Drop
select * from INVENTORY; 
DROP TABLE INVENTORY;
COMMIT;




