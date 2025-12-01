/*
	Select cars made between 1980 and 1989
		show the brand, model, year and price
*/

SELECT brand, model, year, price FROM cars
	WHERE year BETWEEN 1980 AND 1989;

/* 
SELECT brand, model, year, price FROM cars
	WHERE year >= 1980 
	AND year <= 1989;
*/