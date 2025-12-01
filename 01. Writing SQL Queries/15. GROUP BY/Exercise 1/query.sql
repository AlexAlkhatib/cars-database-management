/*
	How many of each brand do we have in stock ?
*/

SELECT brand, COUNT(brand) AS number_in_stock FROM cars
	WHERE sold IS FALSE
	GROUP BY brand;