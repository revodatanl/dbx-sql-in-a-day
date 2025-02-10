CREATE OR REPLACE TABLE my_catalog.nyctaxi.trips AS
SELECT
	row_number() OVER (ORDER BY 1) AS trip_id,
	*
FROM samples.nyctaxi.trips;

SELECT * FROM my_catalog.nyctaxi.trips LIMIT 10;

SELECT * FROM my_catalog.nyctaxi.trips WHERE fare_amount > 5 LIMIT 10;

INSERT INTO my_catalog.nyctaxi.trips 
VALUES 
(99999, '2025-02-10 08:00:00', '2025-02-10 08:30:00', 5.2, 20.5, 10001, 10002);

UPDATE my_catalog.nyctaxi.trips
SET fare_amount = 25.0
WHERE trip_id = 99999;

DELETE FROM my_catalog.nyctaxi.trips
WHERE trip_id = 99999;