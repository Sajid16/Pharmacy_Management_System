set serveroutput on;
set verify off;
accept v_name prompt 'Please enter your first :';
accept v_password prompt 'Please enter your password :';
declare
	t number(20);
	log_id staff.id%type;
	log_name staff.name%type;
	log_password staff.password%type;
	cursor log_in is
	select id,name,password from staff;
begin
	--dbms_output.put_line('&v_name');
	--dbms_output.put_line('&v_password');
	open log_in;
	loop
		fetch log_in into log_id,log_name,log_password;
		--dbms_output.put_line(log_id);
		--dbms_output.put_line(log_name);
		--dbms_output.put_line(log_password);
		if ('&v_password' = log_password) and ('&v_name' = log_name) 
		then
			--dbms_output.put_line('Welcome to AUST pharmacy!');
			t := 1;
			exit;
		else
			--dbms_output.put_line('Wrong username or password!');
			t := 0;
			exit;
		end if;
		exit when log_in%notfound;		
	end loop;
		close log_in;
		
		if t = 1
		then
		--dbms_output.put_line('Welcome to AUST pharmacy!');
		success1;
		else
		--dbms_output.put_line('Wrong username or password!');
		failed;
		end if;
end;
/