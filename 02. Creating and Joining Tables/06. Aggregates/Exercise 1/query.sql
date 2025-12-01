/*
	Select the city and average car price
	Round that car price to a whole number
	
	Only show dealerships which have cars
	
	Group by dealership city and state
*/

SELECT 
    d.city,
    ROUND(AVG(c.price)) AS average_price
FROM dealerships AS d
JOIN cars AS c
    ON d.id = c.dealership_id
GROUP BY 
    d.city,
    d.state;
