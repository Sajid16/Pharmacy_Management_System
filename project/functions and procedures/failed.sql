create or replace procedure failed is
	message varchar(50) := 'Wrong name or password!'; 

begin

dbms_output.put_line(message);

end failed;
/