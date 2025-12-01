/*
	Select the brand, model, price and sold from cars
		the brand can be 'Ford', 'Chevrolet' or 'Ferrari'
		sold must be false
*/

SELECT brand, model, price, sold FROM cars
	WHERE brand IN ('Ford', 'Chevrolet', 'Ferrari')
	AND sold IS FALSE;