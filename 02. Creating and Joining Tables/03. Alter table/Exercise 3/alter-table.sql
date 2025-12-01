-- 1. Add the column (initially nullable)
ALTER TABLE cars
ADD COLUMN dealership_id INTEGER;

-- 2. Insert data to backfill the dealership_id column (Option A)
UPDATE cars
SET dealership_id = 1;   

-- (Option B)
UPDATE cars
SET dealership_id = d.id
FROM dealerships d
WHERE cars.location_code = d.location_code;

-- 3. Add the NOT NULL constraint
ALTER TABLE cars
ALTER COLUMN dealership_id SET NOT NULL;

-- 5. Add the foreign key constraint
ALTER TABLE cars
ADD CONSTRAINT cars_dealership_id_fkey
    FOREIGN KEY (dealership_id)
    REFERENCES dealerships(id);
