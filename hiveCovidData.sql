CREATE DATABASE covid;
use covid;

CREATE EXTERNAL TABLE place (
	id_state STRING,
  	state STRING,
  	population INT,
  	id_place INT
)
COMMENT 'Place id of USA'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/place'
TBLPROPERTIES ("skip.header.line.count"="1");

create EXTERNAL TABLE health(
  id_health int, id_place int)
COMMENT 'Health id'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/health'
TBLPROPERTIES ("skip.header.line.count"="1");

create external table us_state_vaccines(
  	id_us_state_vaccines INT,
  	date_string date,
	total_vaccinations float,
	total_distributed float,
	people_vaccinated float,
	people_fully_vaccinated_per_hundred float,
	total_vaccinations_per_hundred float,
    people_fully_vaccinated float,
    people_vaccinated_per_hundred float,
    distributed_per_hundred float,
    daily_vaccinations_raw float,
    daily_vaccinations float,
    daily_vaccinations_per_million float,
    share_doses_used float)
COMMENT 'Vaccines in US'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/us_state_vaccines'
TBLPROPERTIES ("skip.header.line.count"="1");

CREATE external TABLE hospital_beds_usa (
	id_hospital_beds_usa INT,
  	type String,
  	beds float,
	population INT,
  	year INT)
COMMENT 'Hospital beds in USA'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/hospital_beds_usa'
TBLPROPERTIES ("skip.header.line.count"="1");

CREATE external TABLE hospital_charges (
	id_hospital_charges INT,
	total_discharges INT,
	average_covered_charges FLOAT,
	average_total_payments FLOAT,
	average_medicare_payments FLOAT)
COMMENT 'Hospital charges in USA'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/hospital_charges'
TBLPROPERTIES ("skip.header.line.count"="1");	

CREATE  TABLE covid (
	date_string DATE,
	cases INT,
	cases_avg_per_100k FLOAT,
	deaths INT,
	deaths_avg_per_100k FLOAT,
    id_place INT)
COMMENT 'Covid infections in USA'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/covid'
TBLPROPERTIES ("skip.header.line.count"="1");	

CREATE external TABLE prevention (
	id_prevention INT,
    id_place INT)
COMMENT 'prevention id'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/prevention'
TBLPROPERTIES ("skip.header.line.count"="1");	

CREATE external TABLE mask_usage (
	id_mask_usage INT,
	never float,
	rarely float,
	sometimes float,
	frequently float,
	always float)
COMMENT 'Mask usage'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/mask_usage'
TBLPROPERTIES ("skip.header.line.count"="1");	

CREATE external TABLE lockdowns (
	id_lockdown INT,
	date_string DATE,
	type String)
COMMENT 'Lockdowns'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/lockdowns'
TBLPROPERTIES ("skip.header.line.count"="1");	

CREATE external TABLE macro_values (
  	year INT,
    population INT,
	inflation_rate FLOAT,
	gdp_per_capita INT,
	human_development_index FLOAT,
    id_economy INT)
COMMENT 'Macro values'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/macro_values'
TBLPROPERTIES ("skip.header.line.count"="1");	

CREATE external TABLE unemployement (
  	date_string DATE,
	unrate FLOAT,
	unrate_men FLOAT,
	unrate_women FLOAT,
	unrate_16_to_17 FLOAT,
	unrate_18_to_19 FLOAT,
	unrate_20_to_24 FLOAT,
	unrate_25_to_34 FLOAT,
	unrate_35_to_44 FLOAT,
	unrate_45_to_54 FLOAT,
	unrate_55_over FLOAT,
  	id_unemployement INT)
COMMENT 'Unemployment'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/unemployement'
TBLPROPERTIES ("skip.header.line.count"="1");	

CREATE EXTERNAL TABLE min_wage (
  year int,
id_minwage INT,
state_minimum_wage float,
state_minimum_wage_2020_dollars  float,
federal_minimum_wage float,
federal_minumum_wage_2020_dollars float,
effective_minimum_wage float,
effective_minimum_wage_2020_dollars float,
cpi_average float)
COMMENT 'Min wage'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hdfs/covidData/min_wage'
TBLPROPERTIES ("skip.header.line.count"="1");	



