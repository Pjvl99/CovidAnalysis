create database covid;
use covid;
Drop table if exists us_state_vaccines;
Drop table if exists hospital_beds_usa;
Drop table if exists hospital_charges;
Drop table if exists health;
Drop table if exists covid;
drop table if exists mask_usage;
drop table if exists lockdowns;
drop table if exists policies;
drop table if exists prevention;
drop table if exists poverty;
drop table if exists macro_values;
drop table if exists unemployement;
drop table if exists min_wage;
drop table if exists economy;
drop table if exists place;
CREATE  TABLE place (
	id_state TEXT,
	state TEXT,
	population INT,
	id_place INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id_place)
);

CREATE  TABLE health (
	id_health INT,
	id_place INT,
	FOREIGN KEY (id_place) REFERENCES place(id_place),
	PRIMARY KEY (id_health)
);

CREATE  TABLE us_state_vaccines (
	id_us_state_vaccines INT NOT NULL AUTO_INCREMENT,
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
    share_doses_used float,
	date DATE,
	id_health INT,
	FOREIGN KEY (id_health) REFERENCES health(id_health),
	PRIMARY KEY (id_us_state_vaccines)
);

CREATE  TABLE hospital_beds_usa (
	id_hospital_beds_usa INT NOT NULL AUTO_INCREMENT,
	year INT,
	type TEXT,
	beds float,
	population INT,
	id_health INT,
	FOREIGN KEY (id_health) REFERENCES health(id_health),
	PRIMARY KEY (id_hospital_beds_usa)
);
CREATE  TABLE hospital_charges (
	id_hospital_charges INT NOT NULL AUTO_INCREMENT,
	total_discharges INT,
	average_covered_charges FLOAT,
	average_total_payments FLOAT,
	average_medicare_payments FLOAT,
    id_health INT,
	FOREIGN KEY (id_health) REFERENCES health(id_health),
	PRIMARY KEY (id_hospital_charges)
);

CREATE  TABLE covid (
	id_covid INT NOT NULL AUTO_INCREMENT,
	date DATE,
	cases INT,
	cases_avg_per_100k FLOAT,
	deaths INT,
	deaths_avg_per_100k FLOAT,
    id_place INT,
	FOREIGN KEY (id_place) REFERENCES place(id_place),
	PRIMARY KEY (id_covid)
);


CREATE  TABLE prevention (
	id_prevention INT NOT NULL AUTO_INCREMENT,
    id_place INT,
	FOREIGN KEY (id_place) REFERENCES place(id_place),
	PRIMARY KEY (id_prevention)
);
CREATE  TABLE mask_usage (
	id_mask_usage INT NOT NULL AUTO_INCREMENT,
	never float,
	rarely float,
	sometimes float,
	frequently float,
	always float,
    id_prevention INT,
	FOREIGN KEY (id_prevention) REFERENCES prevention(id_prevention),
	PRIMARY KEY (id_mask_usage)
);

CREATE  TABLE lockdowns (
	id_lockdown INT NOT NULL AUTO_INCREMENT,
	date DATE,
	type TEXT,
	id_prevention INT,
	FOREIGN KEY (id_prevention) REFERENCES prevention(id_prevention),
	PRIMARY KEY (id_lockdown)
);

CREATE  TABLE policies (
	id_policy INT NOT NULL AUTO_INCREMENT,
	schools_closed DATE,
	nonessential_biz_closed DATE,
	stayathome_start DATE,
	regional_biz_opened DATE,
	regional_stayathome_end DATE,
	statewide_biz_opened DATE,
	statewide_stayathome_end DATE,
	regional_biz_reclosed DATE,
    statewide_biz_reclosed DATE,
	id_prevention INT,
	FOREIGN KEY (id_prevention) REFERENCES prevention(id_prevention),
	PRIMARY KEY (id_policy)
);




CREATE  TABLE economy (
	id_economy INT,
    id_place INT,
	FOREIGN KEY (id_place) REFERENCES place(id_place),
	PRIMARY KEY (id_economy)

);

CREATE  TABLE poverty (
	id_poverty INT NOT NULL AUTO_INCREMENT,
	estimate FLOAT,
	income INT,
    id_economy INT,
    year INT,
	FOREIGN KEY (id_economy) REFERENCES economy(id_economy),
	PRIMARY KEY (id_poverty)
);


CREATE  TABLE macro_values (
	id_macro_values INT NOT NULL AUTO_INCREMENT,
	inflation_rate FLOAT,
	gdp_per_capita INT,
    population INT,
	human_development_index FLOAT,
	year INT,
    id_economy INT,
	FOREIGN KEY (id_economy) REFERENCES economy(id_economy),
	PRIMARY KEY (id_macro_values)
);

CREATE  TABLE unemployement (
	id_unemployement INT NOT NULL AUTO_INCREMENT,
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
	date DATE,
    id_economy INT,
	FOREIGN KEY (id_economy) REFERENCES economy(id_economy),
	PRIMARY KEY (id_unemployement)
);

CREATE TABLE min_wage (
id_minwage INT NOT NULL AUTO_INCREMENT,
year int,
state_minimum_wage float,
state_minimum_wage_2020_dollars  float,
federal_minimum_wage float,
federal_minumum_wage_2020_dollars float,
effective_minimum_wage float,
effective_minimum_wage_2020_dollars float,
cpi_average float,
id_economy int,
FOREIGN KEY (id_economy) REFERENCES economy(id_economy),
PRIMARY KEY (id_minwage)
);