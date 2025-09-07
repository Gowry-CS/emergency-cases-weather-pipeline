SELECT * FROM forecast_rainfall;

SELECT r.date, 
			fr.rain_forecasted,
			r.rainfall_intensity
FROM forecast_rainfall AS fr
INNER JOIN rainfall AS r ON fr.date = r.date
WHERE rain_forecasted = 'true' AND rainfall_intensity <> 'No Rain'; 

SELECT r.date, 
			fr.rain_forecasted,
			r.rainfall_intensity
FROM forecast_rainfall AS fr
INNER JOIN rainfall AS r ON fr.date = r.date
WHERE rain_forecasted = 'false' AND rainfall_intensity <> 'No Rain'; 

SELECT DISTINCT 
			r.rainfall_intensity
FROM forecast_rainfall AS fr
INNER JOIN rainfall AS r ON fr.date = r.date
WHERE rain_forecasted = 'false' AND rainfall_intensity <> 'No Rain';

SELECT COUNT(r.rainfall_intensity) 			
FROM forecast_rainfall AS fr
INNER JOIN rainfall AS r ON fr.date = r.date
WHERE rain_forecasted = 'false' AND rainfall_intensity = 'Light Rain'; 

SELECT COUNT(r.rainfall_intensity) 			
FROM forecast_rainfall AS fr
INNER JOIN rainfall AS r ON fr.date = r.date
WHERE rain_forecasted = 'false' AND rainfall_intensity = 'Moderate Rain'; 

SELECT COUNT(r.rainfall_intensity) 			
FROM forecast_rainfall AS fr
INNER JOIN rainfall AS r ON fr.date = r.date
WHERE rain_forecasted = 'false' AND rainfall_intensity = 'Heavy Rain'; 

SELECT COUNT(r.rainfall_intensity) 			
FROM forecast_rainfall AS fr
INNER JOIN rainfall AS r ON fr.date = r.date
WHERE rain_forecasted = 'false' AND rainfall_intensity <> 'No Rain'; 

SELECT r.date, 
			fr.rain_forecasted,
			r.rainfall_intensity
FROM forecast_rainfall AS fr
INNER JOIN rainfall AS r ON fr.date = r.date
WHERE rainfall_intensity <> 'No Rain'; 