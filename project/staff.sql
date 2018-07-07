clear screen;

drop table staff cascade constraints;

create table staff
(id number(20) primary key,
name varchar2(20),
password varchar2(20)
);


insert into staff values(1,'sajid','sajid10');
insert into staff values(2,'sithila','sithila20');
insert into staff values(3,'jisha','jisha17');
--insert into staff values(3,'jish','jisha17');


commit;