/*
	Find the average price of a Bentley
*/

/* ROUND(AVG(price), 2)*/
/* FLOOR() */
/* CEIL() */

/* SELECT FLOOR(AVG(price)) AS bentley_average_price FROM cars
	WHERE brand = 'Bentley'; */

/*
	Find the average, minimum and maximum of all sold cars
*/

SELECT ROUND(AVG(price), 2) AS average, MIN(price) AS minimum, MAX(price) AS maximum
	FROM cars WHERE sold IS TRUE;