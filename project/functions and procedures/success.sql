create or replace procedure success1 is
	message varchar(50) := 'Welcome to AUST pharmacy!'; 

begin

dbms_output.put_line(message);

end success1;
/