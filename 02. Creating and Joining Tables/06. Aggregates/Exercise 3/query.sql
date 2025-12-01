/*
	Select dealership city, count how many cars each dealership has
Only show dealerships with at least one car
Group by city and state
Order by the count of cars in descending order
*/

SELECT
    d.city,
    COUNT(c.id) AS total_cars
FROM dealerships AS d
JOIN cars AS c
    ON d.id = c.dealership_id
GROUP BY
    d.city,
    d.state
ORDER BY total_cars DESC;