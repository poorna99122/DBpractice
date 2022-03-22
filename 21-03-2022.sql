create table theatres (theatre_name varchar2(20), no_of_seats number(3));
select * from movie_theatre;
Alter table theatres rename to movie_theatre;
commit;
Desc movie_theatre;



--Delete Operation 
DELETE FROM movie_theatre;