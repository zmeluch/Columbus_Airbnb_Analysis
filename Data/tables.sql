CREATE TABLE listings (
	id VARCHAR NOT NULL,
	name VARCHAR,
	host_id VARCHAR,
	host_name VARCHAR,
	neighbourhood_group VARCHAR,
	neighbourhood VARCHAR,
	latitude VARCHAR,
	longitude VARCHAR,
	room_type VARCHAR,
	price VARCHAR,
	minimum_nights VARCHAR(3),
	number_of_reviews VARCHAR,
	last_review DATE,
	reviews_per_month VARCHAR,
	calculated_home_listings_count VARCHAR,
	availability_365 VARCHAR(3),
	number_of_rviews_ltm VARCHAR,
	license VARCHAR,
	zipcode VARCHAR(5),
	PRIMARY KEY (id)
);

select * from listings;

CREATE TABLE Housing_2020 (
	ZCTA_Housing_2020 VARCHAR(5) NOT NULL,
	Total_Units_2020 VARCHAR,
	Occupied_Units_2020 VARCHAR,
	Vacant_Units_2020 VARCHAR,
	Median_Rooms_2020 VARCHAR,
	Owner_Occupied_Units_2020 VARCHAR,
	Rental_Occupied_Units_2020 VARCHAR,
	Median_Value_2020 VARCHAR,
	Median_Monthly_Costs_2020 VARCHAR,
	Median_Rent_2020 VARCHAR,
	PRIMARY KEY (ZCTA_Housing_2020)
);

select * from housing_2020;

CREATE TABLE Housing_2015 (
	ZCTA_Housing_2015 VARCHAR(5) NOT NULL,
	Total_Units_2015 VARCHAR,
	Occupied_Units_2015 VARCHAR,
	Vacant_Units_2015 VARCHAR,
	Median_Rooms_2015 VARCHAR,
	Owner_Occupied_Units_2015 VARCHAR,
	Rental_Occupied_Units_2015 VARCHAR,
	Median_Value_2015 VARCHAR,
	Median_Monthly_Costs_2015 VARCHAR,
	Median_Rent_2015 VARCHAR,
	PRIMARY KEY (ZCTA_Housing_2015)
);

select * from housing_2015;

CREATE TABLE Income_2020 (
	ZCTA_Income_2020 VARCHAR(5) NOT NULL,
	Median_Household_Income_2020 VARCHAR,
	Median_Family_Income_2020 VARCHAR,
	PRIMARY KEY (ZCTA_Income_2020)
);

SELECT * from Income_2020;

CREATE TABLE Income_2015 (
	ZCTA_Income_2015 VARCHAR(5) NOT NULL,
	Median_Household_Income_2015 VARCHAR,
	Median_Family_Income_2015 VARCHAR,
	PRIMARY KEY (ZCTA_Income_2015)
);

SELECT * from Income_2015;

SELECT *
FROM listings AS L
INNER JOIN housing_2020 AS H2020
ON l.zipcode = h2020.ZCTA_Housing_2020;

SELECT *
FROM listings AS L
INNER JOIN housing_2020 AS H2020 ON L.zipcode = H2020.ZCTA_Housing_2020
INNER JOIN housing_2015 AS H2015 ON L.zipcode = H2015.ZCTA_Housing_2015;

SELECT *
FROM listings AS L
INNER JOIN housing_2020 AS H2020 ON L.zipcode = H2020.ZCTA_Housing_2020
INNER JOIN housing_2015 AS H2015 ON L.zipcode = H2015.ZCTA_Housing_2015
INNER JOIN income_2020 AS I2020 ON L.zipcode = I2020.ZCTA_Income_2020;

SELECT *
FROM listings AS L
INNER JOIN Housing_2020 AS H2020 ON L.zipcode = H2020.ZCTA_Housing_2020
INNER JOIN Housing_2015 AS H2015 ON L.zipcode = H2015.ZCTA_Housing_2015
INNER JOIN Income_2020 AS I2020 ON L.zipcode = I2020.ZCTA_Income_2020
INNER JOIN Income_2015 AS I2015 ON L.zipcode = I2015.ZCTA_Income_2015;

SELECT *
INTO Full_Listings
FROM listings AS L
INNER JOIN Housing_2020 AS H2020 ON L.zipcode = H2020.ZCTA_Housing_2020
INNER JOIN Housing_2015 AS H2015 ON L.zipcode = H2015.ZCTA_Housing_2015
INNER JOIN Income_2020 AS I2020 ON L.zipcode = I2020.ZCTA_Income_2020
INNER JOIN Income_2015 AS I2015 ON L.zipcode = I2015.ZCTA_Income_2015;

SELECT * FROM Full_Listings;