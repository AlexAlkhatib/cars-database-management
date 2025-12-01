/*
	Select the brand, model, color and year from cars
		exclude any green car
		show models which are 'DB' followed by any other single character
		and the year is after 1964
*/

SELECT brand, model, color, year FROM cars
	WHERE color NOT LIKE '%green%' 
	AND model LIKE 'DB_'
	AND year > 1964;