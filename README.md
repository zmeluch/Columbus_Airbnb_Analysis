
# Airbnb Housing Analysis

## Square Role

### Communication Protocols
- Communicate openly and honestly.
- Use slack channel (team 2).
- Schedule outside meeting times during group breakout room in class.
- Agreed outside meeting times are after 7pm on weekdays and weekends.
- For help reach out to teams members, if in need of more help reach out to teachers.

#### Weekly Roles

![Team_Roles](https://user-images.githubusercontent.com/103155045/197901655-1796e92c-9449-4fc5-af5a-fd576e0591de.png)

## Circle Role

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