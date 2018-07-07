set serveroutput on;
declare
	o_id Ordermedicine.order_id%type;
	o_name ordermedicine.order_name%type;
	o_quantity ordermedicine.order_quantity%type;
	o_mg ordermedicine.order_mg%type;
	ph_number ordermedicine.phone_number%type;
	
	cursor take_order is
	select order_id,order_name,order_quantity,order_mg,phone_number from Ordermedicine;
begin
	open take_order;
	loop
		fetch take_order into o_id,o_name,o_quantity,o_mg,ph_number;
		exit when take_order%notfound;
	end loop;
	--medid := (medid+1);
	dbms_output.put_line(o_id);
	dbms_output.put_line(o_name);
	dbms_output.put_line(o_quantity);
	dbms_output.put_line(o_mg);
	--insert into ordermedicine values (&o_name,&o_quantity,&o_mg,&ph_number);
		close take_order;
	
end;
/