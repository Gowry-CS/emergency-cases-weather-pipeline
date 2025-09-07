--5. Data cleanup of tables in staging database

-- Date transformation of EMD Data
-- 1. Add a new DATE column
ALTER TABLE emd_stacked
ADD COLUMN date DATE;

-- 2. Fill it with converted values
UPDATE emd_stacked
SET date = TO_DATE(date_proper, 'DD/MM/YY');

-- 3. Drop the old column we don’t need it
ALTER TABLE emd_stacked
DROP COLUMN "date_proper";

--4. Create a new table to migrate to our final database
CREATE TABLE emd_data AS
    SELECT 
    	date, 
    	hospital_id,
		hospital_name,
		attendance
FROM emd_stacked;

-- 5. Drop emd_stacked table from staging database
DROP TABLE IF EXISTS emd_stacked RESTRICT;

--Date transformation of agg_forecasts data
ALTER TABLE agg_forecasts
ALTER COLUMN fordate TYPE DATE
USING fordate::date;

--Rename the column as date for agg_forecasts
ALTER TABLE agg_forecasts
RENAME COLUMN fordate TO date;

