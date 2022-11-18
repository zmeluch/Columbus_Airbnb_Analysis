
# Airbnb Housing Analysis

### Outline

Title: AirBnBs in Columbus 

Topic: Understand if and how Airbnb properties are impacting the housing market in Columbus

Reasons for Selecting Topic

Data Sources

Questions to Answer

Data Exploration

Data Analysis - Joining Data

Data Analysis - Machine Learning

Data Analysis-Visualizations

Applications Used

Next Steps / Conclusion


Team Members: Zach, Kelley, Michael, Autumn

Topic: How are Airbnb's affecting the housing market and values in the Columbus OH area?

We selected this topic for a few reasons. Kelley works with housing and properties in her current job. Michael's sister owned a couple of properties that she ran as Airbnb's but the neighbors became alienated so she is looking to sell the properties. Zach had seen Airbnb's and housing market as a hot topic on social media. Autumn's neighbors were upset about local property being used as Airbnb but all had used the service themselves. All of us have stayed at Airbnb's.

We used 3 primary data sources 2015 and 2020 Census Data and Airbnb data for Columbus OH.

We are still defining the questions we are hoping to answer but preliminary list is below.

    1.	Did house values change from 2015 to 2020 where there were large concentrations of Airbnb's?
    
    2.	Did some house value ranges see more listings as Airbnb's?
    
    3.	Were there other variables in Airbnb clusters?
    
    4.	Did median family income increase due to Airbnb?




### Background
The purpose of our analysis and Machine Learning model is to find how the density of AirBnbs in a given area affect the pricing of single family houses in that area. The dataset used contains the airbnb listings in Columbus, Ohio in 2015 as well as 2020, along with various measures of the cities' housing economy such as the median home value and median household income in Columbus for both 2015 and 2020.

### Our Machine Learning Model

After trimming unneeded columns and converting all objects and strings to floats, the data is ready to be manipulated. 

![Screen Shot 2022-11-10 at 8 02 57 PM](https://user-images.githubusercontent.com/108902185/201247049-44c59216-5a85-4b54-8de7-161def02a08f.png)

![Screen Shot 2022-10-27 at 6 16 20 PM](https://user-images.githubusercontent.com/108902185/198408536-17a97dda-424a-4955-b397-b0d389c60d4b.png)

Next, a basic scatterplot displaying the median household value in Columbus in 2015 vs 2020 arranged into three classes was created.

![Screen Shot 2022-10-27 at 6 18 18 PM](https://user-images.githubusercontent.com/108902185/198408662-80af4262-d739-4501-851a-313b5b9b9c1f.png)

A three dimensional model was then created to display the median household value in both 2015 and 2020 along with the number of occupied Airbnb units in year 2020, again arranged into three classes.
![Screen Shot 2022-10-27 at 6 20 32 PM](https://user-images.githubusercontent.com/108902185/198408966-1215dd82-f581-4b72-a359-81cb4f4d438f.png)



### Proposed Data Sets

The proposed goal of this project is to determine whether AirBnB properties are clustered in areas where home properties have increased.  This could indicate that these properties could be crowding out the availability of homes for individuals to purchase and thus, could be making homes less affordable.

The "base" data set is a listing of AirBnB properties in Columbus, Ohio.  Since this class is being offered by the Ohio State University, it makes sense to use data from the university's backyard.  Further, housing conditions in Columbus have been similar to other cities in the United States over the past few years.   

Housings characteristics from the U.S. Census Bureau will be overlaid on the AirBnB listings.  This will facilitate the analysis of housing characteristics within the city.  Income data will also be added to help determine if there are concentrations in the number of AirBnB properties in higher or lower income areas.

These proposed data sets are described in more details below.

#### AirBnB Data

The listing of AirBnB properties in the City of Columbus was retrieved from the Inside AirBnB website: http://insideairbnb.com/.  The goal of this project is to provide data to the public to understand the potential impact of AirBnB properties on communities.

Data for AirBnB listings are included for several cities across the world.  This information is updated regularly.  The data for Columbus was most recently updated on September 21, 2022.  

Specifically, the listings data will be used for this project.  This is a .csv file that contains the following fields:
- Listing ID Number and Name
- Host ID Number and Name
- Neighborhood Name and Group
- Latitude and Longitude Coordinates of the Property
- Room Type (entire house, shared room, private room, etc.)
- Price
- Minimum Night Requirement
- Number of Reviews
- Date of Latest Review
- Reviews Per Month
- Number of Listings by Host (Calculated Field)
- Number of Night Available in the Past Year
- License Number

The website maintains a data dictionary to describe the information collected:  https://docs.google.com/spreadsheets/d/1iWCNJcSutYqpULSQHlNyGInUvHg2BoUGoNRIGa6Szc4/edit#gid=1322284596

#### U.S. Census Bureau Housing and Income Data

The United States Census Bureau conducts periodic surveys to collect information on social, economic, demographic, and housing characteristics of the the American population; these are calld the American Community Surveys (ACS) (https://www.census.gov/programs-surveys/acs).  The Census Bureau publishes this data as a one-year or five-year survey (https://www.census.gov/programs-surveys/acs/guidance/estimates.html).

The five-year surveys would be more beneficial to use for this project because the multi-year surveys are more statistically reliable, especially for smaller population subgroups (https://www.census.gov/data/developers/data-sets/acs-5year.html).  To show differences in characteristics in neighborhoods across the City of Columbus, it has been preliminarily decided to obtain housing and income characteristics on the zip code tabulated area (ZCTA) level.  ZCTAs are generalized areal representations of the zip codes used by the United States Postal Service.  Zip codes identify individual post offices associated with mailing addresses and are not true areal features.   ZCTAs are used to approxiate the geographic reach of each zip code.  The easiest way to obtain ZCTAs for the City of Columbus is to retrieve all the ZCTAs in Franklin County, Ohio, (https://www.census.gov/programs-surveys/geography/guidance/geo-areas/zctas.html)

To show differences in housing and income levels over a period of time, the 2020 five year ACS, which represents data from 2016-2020, and the 2015 five year ACS, which includes data from 2011-2015, have been selected for analysis.

The data colleced from the U.S. Census was obtained through the Bureau's CEDSCI website (https://data.census.gov/cedsci/).

#### Housing Characteristics

The ACS contains various data related to housing characteristics, including housing occupancy, number of units in each structure, structure age, number of rooms, value, and costs.  Not all of this informaton is necessary to conduct the proposed analysis.  At this time, the suggested fields to capture are:
- Total Housing Units
- Number of Occupied Housing Units
- Median Number of Rooms
- Number of Owner-Occupied Units
- Median Housing Value
- Median Monthly Costs
- Median Gross Rent

#### Income Characteristics

The ACS also collects information related to respondents' incomes in inflation-adjusted dollars.  Two useful sets of data are the median household and median family incomes.  Median household income represents the total income of all individuals from the same address while median family income is restricted to individuals in households who are related by blood, marriage or adoption.

## Connecting the AirBnB and Census Data Files

The geographical feature included in the AirBnB file are the latitude and longitude coordinates while this feature is the ZCTA for the Census files.  An intermediate step is needed to convert the geographical coordinates to a zip code, which then can be matched to the ZCTAs in the Census files.  Once this step is completed, the 2020 and 2015 housing characteristics from the Census can be matched to the properties in the AirBnB file.

The zip codes can be obtained from the latitude and longitude coordinates using the GeoPy Python package (https://geopy.readthedocs.io/en/stable/).  The code to accomplish this is found here: https://github.com/zmeluch/group_2_project/blob/Circle/Data/Get_Zip.ipynb.  The .csv with the results is here:  https://github.com/zmeluch/group_2_project/blob/Circle/Data/Columbus_Listings_with_Zip.csv.

The results can then be loaded in PostgresSQL to create a table.  Cleansed versions of the 2015 and 2020 Census housing and income can also be imported to PostgresSQL.  To bring together the data, a query is generated in which inner joins are made between the listing and Census tables where the zip code field in the listings table is set equal to the ZCTA fields in each Census table.  The code to create the tables and then query these tables is housed here:  https://github.com/zmeluch/group_2_project/blob/Circle/Data/tables.sql.  The results of those queries are then downloaded to a file than can be used for visualizations and to conduct machine learning.  The full results are here:  https://github.com/zmeluch/group_2_project/blob/main/Full_Listings.CSV

The Census Data files require cleaning to be in a compatible format for querying.  Preliminary cleaning steps were done in Excel (incuding transposing rows and columns and combining title rows).  This cleansed data is found here:  https://github.com/zmeluch/group_2_project/blob/Circle/Data/2020_Census_Housing_Data.csv, 
https://github.com/zmeluch/group_2_project/blob/Circle/Data/2020_Census_Income_Data.csv,
https://github.com/zmeluch/group_2_project/blob/Circle/Data/2015_Housing_Clean.csv,
https://github.com/zmeluch/group_2_project/blob/Circle/Data/2015_Income_Clean.csv

A draft database modeling diagram has been created to show the relationships between the tables. https://github.com/zmeluch/group_2_project/blob/Circle/Draft_DMD.png.  The "table" used to connect latitude and longitude coodinates was accomplished using code in Python but was kept to show the intermediate step that had to be taken so that the AirBnB and Census data could "talk" to each other.  
>

## Dashboard

![Dashboard-2](https://user-images.githubusercontent.com/103155045/201246161-3752ecd8-9056-4a92-a36b-4701f6dfd82a.png)



Link to Dashboard

https://public.tableau.com/app/profile/zach4381/viz/ColumbusAirBnBAnalysis/Story1?publish=yes

___________________________________________


A draft presentation in Google Slides was put together describing the following:
* Selected topic
* Reason topic was selected
* Description of the source of data
* Questions the team hopes to answer with the data
* Description of the data exploration phase of the project
* Description of the analysis phase of the project

https://docs.google.com/presentation/d/1rO2i72UsggOnBbOaXtPJ2cRrcxjElsqL4Z8WRPnc8LU/edit?usp=sharing

## Connection from Python to PostGresSQL Using SQLAlchemy

The dataframe generated into the Get_Zip Jupyter notebook file was connected to PostGresSQL with the following code:
https://github.com/zmeluch/group_2_project/blob/main/Data/SQL_Connection.ipynb

## Revising the Code to Connect the AirBnB Listings to Zip Codes

When looking at the original code (Get_Zip.ipynb) file, it was discovered that try-except blocks were no longer correctly.  The reason that this was originally added is because some of the latitude and longitude coordinates were not matching to zip codes in the GeoPy module.  The results were researched and the specific instances in which zip codes were not matching were found by seeing at what point the results had errors.  The original listings file from AirBnB was opened to find these particular properties.  The latitude and longitude coordinates were entered in Google Maps to obtain an address.  That address was then entered back into Google Maps to obtain new, albeit close, coordinates.  These coordinates were then entered into the listings .csv file.  That file was saved and the code was run again until there were no errors.  There were three or four cases in which the coordinates could not be matched to the zip code.  The revised listings document to clean the coordinates is here:  https://github.com/zmeluch/group_2_project/blob/X---2nd-Week/Data/Revised_Columbus_Listings.csv.  The revised code to match the zip codes and coordinates is here:  https://github.com/zmeluch/group_2_project/blob/X---2nd-Week/Data/Revised_Columbus_Listings.csv.  This revised file also added a connection between the Python-based code and PostGresSQL.  The results of the revised code are here:  https://github.com/zmeluch/group_2_project/blob/X---2nd-Week/Data/Revised_Columbus_Listings_with_Zip.csv

With the connection, the listing document with the zip did not have to be manually loaded into PostgresSQL.  The other tables were re-entered and the query that matched the listings to the Census data was redone.  The revised SQL code is here:  https://github.com/zmeluch/group_2_project/blob/X---2nd-Week/Data/Revised_Tables.  Finally, the results of query are stored here:  https://github.com/zmeluch/group_2_project/blob/X---2nd-Week/Data/Revised_Full_Listings.csv.


## Week Three - Machine Learning
After cleaning the dataset and removing unneeded columns, additional columns were added to the dataset to yield further information about the dataset.

![Screen Shot 2022-11-10 at 8 02 57 PM](https://user-images.githubusercontent.com/108902185/201246478-dd0faf62-fcef-40a2-ac28-514e43aa06ea.png)

Zipcount holds the number of Airbnb listings in a given zipcode. The zipdensity is a zipcode's zipcount divided by the total owner occupied housing in the zipcode in 2020.The rent_difference and income_difference are the 2015 values for rent and income subtracted from the 2020 values respectively. A five_year_diff column was also added to show the 2020 median home value subtracted by the 2015 median home value in a zipcode. 

## 3D Model and Our Findings

![Screen Shot 2022-11-10 at 8 01 00 PM](https://user-images.githubusercontent.com/108902185/201247157-e034cdd8-3238-41f2-aed6-b13b7a11d7e1.png)

The 3D scatter plot above displays the data based on the median home value in 2015 for the zipcodes, the five year home value difference, the density of Airbnb listings in a zipcode. 
The clusters which are differentiated by color, seem arrange the data into three clusters that essentially indicate lower, middle, and upper class housing. Except for the fourth cluster shown in blue. This cluster contains homes that would likely be clusted with the lower class housing although because they appreciated so aggressively between 2015 and 2020, often close to doubling in value if not more. It is also apparent that these zipcodes have a much higher concentration of airbnb listings than the average zipcode, especially when compared to homes with similar median value in 2015. 

## Limitations

After cleaning the data by removing columns, excluding outlying zipcodes likely skewed by there proximity to Ohio State's campus as well as the popularity of the school's football program, removing zero values from the median family income and owner occupied units columns and sclaing the data, the models only prefers to cluster via the median household values in 2015.

____________________________________________________________________________________________________________

#Circle - Third Week

The presentation has been renamed and is housed here:  https://docs.google.com/presentation/d/1E3SVTMFQzZ3htjidnXUpBjcGkBse8QqXvKJqRpLcnI0/edit#slide=id.g187237edaa3_0_5

A slide was added to discuss the types of technology and tools used for the project.  Technologies are listed below along with a general description of their use:
* Python Packages
    * Pandas - used to load the initial Inside AirBnB data as a dataframe.  Also used to clean the data, find values, and export files.
    * GeoPy - facilitated the geocoding of loctions using third-party sites.
    * Plotly Express and hvPlot - produced plots for the maching learning portion.
    * Plotly Figure Factory - generated the dendrogram for the machine learning piece.
    * scikit-learn - produced the models for the machine learning portion, including clustering algorithms.
    * SQLAlchemy - created a connection between Python code in Jupyter Notebook and PostgreSQL.
* Nominatim - used OpenStreetMap data to find locations on Earth through reverse geocoding (in this case, using coordinates to find zip codes).
* Jupyter Notebook - housed the Python-based code.
* PostgreSQL - housed the SQL queries to join the Inside AirBnB and census data.
* Tableau - housed the data visualizations

A conclusion slide was also added to wrap up the presentation and provide potential next steps and further items to explore to supplement the analysis.

_____________________________________________________________________________________________________________

#Autumn -Fourth Week

Updated Applications Used through Conclusion (10-14) slides.
* Applications Used - adjusted speaker notes for my part of the presentation
* Results of Analysis - adjusted speaker notes for my part of the presentation
* Recommendations for Future Analysis - added Statistical Analysis portion listing Regression along with accessing data from Franklin County Auditor's Open Data    Portal, also adjust speaker notes for my part of the presentation
* What Could We Have Changed - adjusted speaker notes and note for clarification
* Added Questions slide
____________________________________________________________________________________________________________

Michael---4th-week
# Final Machine Learning

After scaling the data via MinMax scaler, a new 3D model was created.

![Screen Shot 2022-11-17 at 3 39 47 PM](https://user-images.githubusercontent.com/108902185/202568259-699bd9d6-fc57-49c3-8222-c0a4f7dbf340.png)

This model displays similar clustering with the previous models. With the most interesting results stemming from the orange dots in class 2. These zipcodes had gone from low value homes ~$100,000 in value in 2015 to oftentimes over double the value in 2020. We then went on to find that these zip codes are large percentage of the immediate surrounding area of Nationwide Children's Hospital. This hospital became affiliated with Nationwide in 2020, likely causing a migration of workers moving into the areas around the hospital. Which is where we have seen housing prices skyrocket from 2015 to 2020. Thus, the presence of Airbnbs in given area may be a byproduct of rapidly changing housing markets and possible gentrification of that area.

## Statistically Analysis Possibilites
If we were to take a statistical approach to this dataset and the questions we have sought to answer, it is likely that a regression would be beneficial. This would allow us to differentiate the effect of each variable in our dataset on how many AirBnbs are in a given area. If additional analysis were to be needed a difference in differences analysis would likely show which areas are straying from the typical patterns which might lead us to more areas of possible gentrification.

_________________________________________________

# Kelley - Fourth Week

Three slides were added to the end of the presentation to facilitate wrapping up the slides.  The three slides added were:
1.  Results of Analysis - shows whether the analysis answered our initial questions.  While there may not have been a strong overall trend showing the relationship between the number of AirBnBs and areas where housing values have significantly increased, there were definitely areas within the city where this pattern was observed.  More details of this conclusions will be shared in the machine learning and visualization sections.
2. Recommendations for Future Analysis - describes steps that could be taken to enhance the analysis, including performing regression analysis to more clearly determine if there are relationships between housing data, such as increases in home values and changes in vacancy rates, and the number of AirBnBs.
3. What Could Have Been Done Differently - outlines actions that may have made the process better, such as bringing in historical AirBnB data to improve the identification of trends, specifically, if increases in AirBnB listings were consistent with changes in the underlying housing data.

Formatting changes were also made to the slides so that they were more consistent in appearance, such as font size and spacing.

