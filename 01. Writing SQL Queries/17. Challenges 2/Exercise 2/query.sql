/*
	What are the most common colors you have in stock ?
*/

SELECT COUNT(color) AS color_count, color FROM cars
	WHERE sold IS FALSE
	GROUP BY color
	HAVING COUNT(color) > 2
	ORDER BY color_count DESC;