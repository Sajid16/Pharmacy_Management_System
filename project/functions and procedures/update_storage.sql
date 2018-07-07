create or replace function update_storage (quantity integer,name varchar2)
return integer is

store integer;

begin

	select med_quantity into store from medicine where med_name = name;
	store := store - quantity;
	update medicine set med_quantity = store where med_name = name;
	return store;
end;
/

commit;