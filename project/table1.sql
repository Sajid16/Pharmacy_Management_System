drop table Ordermedicine;

create table Ordermedicine
(order_id number(20) primary key,
order_quantity integer,
order_name varchar2(50),
order_mg varchar2(20),
phone_number varchar2(25)
);


commit;