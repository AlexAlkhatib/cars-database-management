/*
	Select the state and the maximum car mileage
Only show dealerships that have cars
Group by state
Order by the maximum mileage in descending order
*/

SELECT
    d.state,
    MAX(c.mileage) AS max_mileage
FROM dealerships AS d
JOIN cars AS c
    ON d.id = c.dealership_id
GROUP BY d.state
ORDER BY max_mileage DESC;