create or replace function price_purchase (quantity integer,price number)
return number is

total_price number(7,3);
vat number(7,3);

begin
	total_price := price + (price*.15);
	return total_price;
	
end;
/

commit;