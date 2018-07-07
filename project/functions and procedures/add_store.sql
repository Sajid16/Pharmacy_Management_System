create or replace function add_storage (id number,quantity integer)
return integer is

add_st integer;

begin
	add_st := quantity;
	update medicine set med_quantity = add_st where med_id = id;
	return add_st;
	
end;
/

commit;