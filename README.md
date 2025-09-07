#### emergency-cases-weather-pipeline

**Goal**

The goal of this project is to build a robust data pipeline that extracts, transforms, and loads (ETL) healthcare and weather data into a centralized database optimized for OLAP queries. This enables efficient analysis of the relationship between weather patterns and healthcare demands in Singapore.

Through this project, we aim to:

1.Extract Data from different sources though an ETL/ELT pipeline to a database.<br>
2. Develop a well-structured database schema to support scalable and reliable analysis.<br>
3. Assess whether rainfall influences emergency room admissions.<br>
4. Evaluate the reliability of weather forecasts for planning hospital resources.<br>

**Scope & Limitations**

**Scope**

Focuses on emergency cases, historical rainfall data, and historical rain forecast data  from 2003 to 2004. Includes data from most public hospitals in Singapore during this period. All data sources links can be found in the Documentation pdf file page 2.

Designed and implemented a database schema optimized for OLAP queries, enabling efficient trend and correlation analysis. Refer to Final Database Schema's ERD diagram to understand the relationship between the different tables.  

Concentrates on two core research questions:<br>
1.Does rainfall influence emergency room admissions?<br>
2.Are weather forecasts sufficiently reliable for planning hospital resources?

**Limitations**

Woodlands Health was excluded as it was not operational during the study period.<br>
KKH was excluded due to unavailable data via MOH.<br>
Analysis is restricted to the 2003–2004 timeframe; insights may not generalize to current hospital operations or climate patterns.<br>
Weather and healthcare data availability may introduce bias or gaps in certain time intervals. <br>
