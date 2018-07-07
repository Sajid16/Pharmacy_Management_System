set serveroutput on;
set verify off;

declare
	X2 integer := &quantity;
	X3 varchar(20) := &mg;
	X4 number(7,3) := &price;

begin
	dbms_output.put_line('----------------------------------');
	dbms_output.put_line('----------------------------------');
	dbms_output.put_line('Total bill for current customer is :');
	dbms_output.put_line(price_purchase(X2,X4));
	/*dbms_output.put_line('----------------------------------');
	dbms_output.put_line('----------------------------------');
	dbms_output.put_line('The remaining stock quantity is :');
	dbms_output.put_line(update_storage(X2,X5));*/
end;
/