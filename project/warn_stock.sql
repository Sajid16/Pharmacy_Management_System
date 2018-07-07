set serveroutput on;

declare 
	new1 integer;
	new2 integer;
	quan medicine.med_quantity%type;
	
	cursor warn is
	select med_quantity from medicine;
begin
open warn;
	loop
		fetch warn into new1;
		new2 := warning(new1);
		dbms_output.put_line(new2);
		if new2 = 1
		then
			dbms_output.put_line('You are going out of stock!');
			exit;
		else
			dbms_output.put_line('Everything is looking good!');
		end if;
		exit when warn%notfound;
		end loop;
		close warn;
end;
/