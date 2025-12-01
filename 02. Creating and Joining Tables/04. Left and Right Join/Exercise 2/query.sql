/*
You are given the tables vehicles and dealerships.

vehicles table
vehicle_id	dealership_id	make	model	year
1	2	Honda	Civic	2020
2	2	Toyota	Camry	2021
3	3	Ford	F-150	2019
4	1	Tesla	Model 3	2022
dealerships table

(assume the dealerships table already exists)

Write a SQL query like : 
Select the make, model, year, and the dealership's city and state
    From the vehicles table
Left join with the dealerships table on the dealership_id
    so that each vehicle shows its dealership location
*/

SELECT 
    v.make,
    v.model,
    v.year,
    d.city,
    d.state
FROM vehicles AS v
LEFT JOIN dealerships AS d
    ON v.dealership_id = d.id;