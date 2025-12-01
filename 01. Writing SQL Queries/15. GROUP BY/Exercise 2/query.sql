/*
	How many do we have at each level of condition ?

	Select the condition, and a count of the condition from cars
		group by the condition column
*/

SELECT condition, COUNT(condition) AS condition_level
	FROM cars
	GROUP BY condition;