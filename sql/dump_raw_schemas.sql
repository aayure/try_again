-- Showing Schemas for each of the tables
DESCRIBE bike_data;
SHOW central_park_weather;
DESCRIBE fhv_bases;
SHOW fhvhv_tripdata;
DESCRIBE green_tripdata;
SHOW yellow_tripdata;



-- Putting into the HW format of table name first and then first column
SELECT 'Table Name: bike_data'; 

SELECT CONCAT('Column Name: ', column_name) as column_name
FROM information_schema.columns
WHERE table_name = 'bike_data';

SELECT 'Table Name: central_park_weather';
 
SELECT CONCAT('Column Name: ', column_name) as column_name 
FROM information_schema.columns 
WHERE table_name = 'central_park_weather';  

SELECT 'Table Name: fhv_bases';

SELECT CONCAT('Column Name: ', column_name) as column_name
FROM information_schema.columns
WHERE table_name = 'fhv_bases';

SELECT 'Table Name: fhvhv_tripdata';
 
SELECT CONCAT('Column Name: ', column_name) as column_name
FROM information_schema.columns
WHERE table_name = 'fhvhv_tripdata';

SELECT 'Table Name: green_tripdata';

SELECT CONCAT('Column Name: ', column_name) as column_name
FROM information_schema.columns
WHERE table_name = 'green_tripdata';

SELECT 'Table Name: yellow_tripdata';

SELECT CONCAT('Column Name: ', column_name) as column_name
FROM information_schema.columns
WHERE table_name = 'yellow_tripdata';
