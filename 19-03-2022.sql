select * from customers;
--Updating a particular column record 
update customers set mobile_number='9999999999' where first_name='poorna';

--Updating all records in that row 
update customers set first_name='poorna';

update customers set first_name ='sravanthi' where mobile_number='6281964127';
commit;



--Alter 

select * from customers;
Desc customers;


--Adding a new column to a table 
Alter table customers
add AGE varchar2(3);

--Modiying an existing column to a table 
Alter table customers 
modify AGE varchar2(3);
commit;

--Renaming a column to a table 
Alter table customers
rename column age to personAge;

commit;


alter table customers 
Drop column personage;

commit;



alter table customers 
rename to customers1;

select * from customers1;


alter table customers1 rename to customers;
select * from customers;










