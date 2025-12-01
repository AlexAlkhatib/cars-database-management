/*
	Alter the staff table
		alter the dealership_id column
		dropping the NOT NULL constraint
*/

ALTER TABLE staff
ALTER COLUMN dealership_id DROP NOT NULL;

-- New salespeople
INSERT INTO staff (name, role)
 VALUES
 ('Tony Turner', 'Salesperson'),
 ('Axel Grimes', 'Salesperson'),
 ('Elle Bowgrease', 'Salesperson');

-- Insert new dealerships opening 2027
INSERT INTO dealerships ( city, state, established )
	VALUES
	( 'Houston', 'TX', '2027-07-04' ),
	( 'Phoenix', 'AZ', '2027-07-04' ),
	( 'Dallas', 'TX', '2027-07-04' ),
	( 'Austin', 'TX', '2027-07-04' ),
	( 'Boston', 'MA', '2027-07-04');

/*
	1. Alter the customers table to drop the NOT NULL constraint on the email column.
*/
ALTER TABLE customers
ALTER COLUMN email DROP NOT NULL;

/*
	2. Update the customers table setting email = NULL for customers whose name is 'Test User'.
*/
UPDATE customers
SET email = NULL
WHERE name = 'Test User';

/*
	3. Delete 'Test User' from the customers table.
*/
DELETE FROM customers
WHERE name = 'Test User';