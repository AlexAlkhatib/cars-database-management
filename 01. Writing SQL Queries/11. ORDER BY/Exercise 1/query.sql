/*
	Select the brand, model, condition and price from cars
		where cars were not sold
		and condition is different from 5
		order the table by condition in descending order
		and by price in ascending order
*/
/* ASC is optional */

SELECT brand, model, condition, price FROM cars
	WHERE sold IS FALSE
	AND condition != 5
	ORDER BY condition DESC, price ASC;