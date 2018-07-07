set serveroutput on;

declare
	X1 number := &id;
	X2 integer := &quantity;

begin
	dbms_output.put_line('The total stock for medicine id '|| X1 || ' is :');
	dbms_output.put_line(add_storage(X1,X2));
end;
/


commit;