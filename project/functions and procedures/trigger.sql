create or replace trigger trigger_log
after insert on medicine
for each row

begin
	dbms_output.put_line('data inserted');
end;
/