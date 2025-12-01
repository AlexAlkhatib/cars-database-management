/*
	Set the dols column to true for the 'Ford' 'Escort RS2000'
*/

UPDATE cars SET
	sold = TRUE
WHERE brand = 'Ford' AND model = 'Escort RS2000';