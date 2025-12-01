/*
	Select the name, role and city from sold_cars
	
	Join with the staff and dealerships tables
		use appropriate joins to show staff who have no dealership_id
		
	Include a where clause to find
		- null values in sold_cars
		- staff who have the role 'Salesperson'
*/
SELECT
    st.name,
    st.role,
    d.city
FROM sold_cars AS sc
LEFT JOIN staff AS st
    ON sc.seller = st.id
LEFT JOIN dealerships AS d
    ON st.dealership_id = d.id
WHERE
    sc.seller IS NULL         -- null values in sold_cars
    AND st.role = 'Salesperson';