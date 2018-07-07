set serveroutput on;
set verify off;
declare
	X1 number := &id;
	X2 ordermedicine.order_quantity%type;
	X3 ordermedicine.order_name%type;
	X4 ordermedicine.order_mg%type;
	X5 ordermedicine.phone_number%type;
begin
	select order_quantity,order_name,order_mg,phone_number into X2,X3,X4,X5 from ordermedicine where order_id = X1;
	
	dbms_output.put_line(X2);
	dbms_output.put_line(X3);
	dbms_output.put_line(X4);
	dbms_output.put_line(X5);
	dbms_output.put_line('----------------------------------');
	dbms_output.put_line('----------------------------------');
	dbms_output.put_line('Total bill for order id '|| X1 || ' is :');
	dbms_output.put_line(price_delivary(X1));
	dbms_output.put_line('----------------------------------');
	dbms_output.put_line('----------------------------------');
	dbms_output.put_line('The remaining stock quantity is :');
	dbms_output.put_line(update_storage(X2,X3));
	
end;
/