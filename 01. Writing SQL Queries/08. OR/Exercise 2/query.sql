/*
	Search for brand, model, condition and price of cars
		where the price is less than $250.000
		or the brand is Porshe
		only show cars with condition > 3
*/

SELECT brand, model, condition, price FROM cars
	WHERE price <= 250000
	OR brand = 'Porshe'
	AND condition > 3;