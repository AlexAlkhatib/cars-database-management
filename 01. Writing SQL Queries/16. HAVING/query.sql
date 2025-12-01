/*
	Select:
		* year
		* a count of cars from that year, aliased as car_count
		* the maximum price
		* the minimum price
	from the table cars
		where the car has been sold
	group by year
		only show years where more than one car has been sold from that year
	order the result by car_count
*/

SELECT year, COUNT(year) AS car_count, 
	MAX(price) AS maximum_price, 
	MIN(price) AS minimum_price
	FROM cars
	WHERE sold IS TRUE
	GROUP BY year
	HAVING COUNT(year) > 1
	ORDER BY car_count DESC;

/*
	HAVING COUNT(year) > 1 : PostgreSQL does NOT allow using a SELECT alias inside the HAVING clause. You must repeat the aggregate function instead.
*/