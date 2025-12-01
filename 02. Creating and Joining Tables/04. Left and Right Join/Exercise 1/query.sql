/*
	Select name, role, city, state
		From the staff table
	Left join with the dealerships table where the dealership_id in staff
			matches with the id in dealerships
*/

SELECT 
    s.name,
    s.role,
    d.city,
    d.state
FROM staff AS s
LEFT JOIN dealerships AS d
    ON s.dealership_id = d.id;