SELECT r.date, 
		r.station_id, 
		r.total_rainfall,
		r.rainfall_intensity,
		e.hospital_id,
		e.admissions
FROM rainfall AS r
JOIN emd AS e ON r.date = e.date;

COPY (SELECT r.date, 
		r.station_id, 
		r.total_rainfall,
		r.rainfall_intensity,
		e.hospital_id,
		e.admissions
FROM rainfall AS r
JOIN emd AS e ON r.date = e.date)
TO 'D:/Gowry Files/Courses - Training/Junior Data Engineer - Generation SG/Data Engineering Modules/Module 3/JDE Interim Project/Interim Project - Weather data & Accidents/Notebooks (extraction)/Final Notebooks submission/daily_rainfall_by_hospital.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');


SELECT f.date,
	   f.region,
	   f.rain_forecasted,
	   r.total_rainfall
FROM rainfall AS r
INNER JOIN forecast_rainfall AS f ON r.date = f.date;

COPY (SELECT f.date,
	   f.region,
	   f.rain_forecasted,
	   r.total_rainfall
FROM rainfall AS r
INNER JOIN forecast_rainfall AS f ON r.date = f.date)
TO 'D:/Gowry Files/Courses - Training/Junior Data Engineer - Generation SG/Data Engineering Modules/Module 3/JDE Interim Project/Interim Project - Weather data & Accidents/Notebooks (extraction)/Final Notebooks submission/daily_rainfall_by_forecast.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');