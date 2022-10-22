# Circle Role

## Proposed Data Sets

The proposed goal of this project is to determine whether AirBnB properties are clustered in areas where home properties have increased.  This could indicate that these properties could be crowding out the availability of homes for individuals to purchase and thus, could be making homes less affordable.

The "base" data set is a listing of AirBnB properties in Columbus, Ohio.  Since this class is being offered by the Ohio State University, it makes sense to use data from the university's backyard.  Further, housing conditions in Columbus have been similar to other cities in the United States over the past few years.   

Housings characteristics from the U.S. Census Bureau will be overlaid on the AirBnB listings.  This will facilitate the analysis of housing characteristics within the city.  Income data will also be added to help determine if there are concentrations in the number of AirBnB properties in higher or lower income areas.

These proposed data sets are described in more details below.

### AirBnB Data

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

### U.S. Census Bureau Housing and Income Data

The United States Census Bureau conducts periodic surveys to collect information on social, economic, demographic, and housing characteristics of the the American population; these are calld the American Community Surveys (ACS) (https://www.census.gov/programs-surveys/acs).  The Census Bureau publishes this data as a one-year or five-year survey (https://www.census.gov/programs-surveys/acs/guidance/estimates.html).

The five-year surveys would be more beneficial to use for this project because the multi-year surveys are more statistically reliable, especially for smaller population subgroups (https://www.census.gov/data/developers/data-sets/acs-5year.html).  To show differences in characteristics in neighborhoods across the City of Columbus, it has been preliminarily decided to obtain housing and income characteristics on the zip code tabulated area (ZCTA) level.  ZCTAs are generalized areal representations of the zip codes used by the United States Postal Service.  Zip codes identify individual post offices associated with mailing addresses and are not true areal features.   ZCTAs are used to approxiate the geographic reach of each zip code. (https://www.census.gov/programs-surveys/geography/guidance/geo-areas/zctas.html)

To show differences in housing and income levels over a period of time, the 2020 five year ACS, which represents data from 2016-2020, and the 2015 five year ACS, which includes data from 2011-2015, have been selected for analysis.







