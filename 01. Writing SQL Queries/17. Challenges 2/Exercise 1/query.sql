/*
	Select brand, model, and year from cars
		only show the oldest 5 cars in the database
		show cars which haven't been sold
*/

SELECT brand, model, year FROM cars
	WHERE sold IS FALSE
	ORDER BY year ASC
	LIMIT 5;