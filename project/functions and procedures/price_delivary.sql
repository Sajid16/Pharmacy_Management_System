create or replace function price_delivary (quantity integer)
return number is

price number(7,3) := &price;
total_price number(7,3);
charge constant number(4,2) := 50.00;
vat number(7,3);

begin
	total_price := price + charge + (price*.15);
	return total_price;
	
end;
/

commit;