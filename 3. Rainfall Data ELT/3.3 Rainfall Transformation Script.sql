-- 1. 2023 Rainfall Data Transformation
CREATE TABLE rainfall_2023 AS
SELECT 
    date, 
    station_id, 
    station_name, 
    location_longitude AS longitude, 
    location_latitude AS latitude,
    SUM(reading_value) AS total_rainfall,
    CASE 
        WHEN SUM(reading_value) > 30.01 THEN 'Heavy Rain'
        WHEN SUM(reading_value) <= 0.09 THEN 'No Rain'
		WHEN SUM(reading_value) >=0.1 AND SUM(reading_value) <=10.00 THEN 'Light Rain'
        ELSE 'Moderate Rain'
    END AS rain_intensity
FROM rain_2023
GROUP BY 
    date, 
    station_id, 
    station_name, 
    location_longitude, 
    location_latitude;
	
--Alter date column type from text to date
ALTER TABLE rainfall_2023
ALTER COLUMN date TYPE DATE
USING date::DATE;

-- 2. Replicate the same for 2024 Rainfall data
CREATE TABLE rainfall_2024 AS
SELECT 
    date, 
    station_id, 
    station_name, 
    location_longitude AS longitude, 
    location_latitude AS latitude,
    SUM(reading_value) AS total_rainfall,
    CASE 
        WHEN SUM(reading_value) > 30.01 THEN 'Heavy Rain'
        WHEN SUM(reading_value) <= 0.09 THEN 'No Rain'
		WHEN SUM(reading_value) >=0.1 AND SUM(reading_value) <=10.00 THEN 'Light Rain'
        ELSE 'Moderate Rain'
    END AS rain_intensity
FROM rain_2024
GROUP BY 
    date, 
    station_id, 
    station_name, 
    location_longitude, 
    location_latitude;

--Alter date column type from text to date
ALTER TABLE rainfall_2024
ALTER COLUMN date TYPE DATE
USING date::DATE;

-- 3. Drop tables rain_2023 and rain_2024 from staging database

DROP TABLE IF EXISTS rain_2023 RESTRICT;
DROP TABLE IF EXISTS rain_2024 RESTRICT;