create or replace function warning (quantity integer)
return integer is

q number (7,3);

begin
	q := quantity * .25;
	if quantity < q 
	then
		return 1;
	else
		return 0;
	end if;
	
end warning;
/