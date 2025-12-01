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
	1. Alter table vehicles to drop the NOT NULL constraint on the mileage column.
*/
ALTER TABLE vehicles
ALTER COLUMN mileage DROP NOT NULL;


/*
	2. Update all vehicles so that mileage becomes NULL where the mileage is less than 100.
*/
UPDATE vehicles
SET mileage = NULL
WHERE mileage < 100;

/*
	3. Delete any vehicle from the vehicles table where the model is 'Oldtimer'.
*/
DELETE FROM vehicles
WHERE model = 'Oldtimer';
