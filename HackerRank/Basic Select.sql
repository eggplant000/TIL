-- Revising the Select Query I
select * from CITY
    where population > 100000 and countrycode = 'USA';

-- Revising the Select Query II
select name from  CITY
    where population > 120000 and countrycode = 'USA';

-- Select All
select * from CITY;

-- Select By ID
select * from CITY
    where ID = 1661;

-- Japanese Cities' Attributes
select * from CITY
    where countrycode = 'JPN';

-- Japanese Cities' Names
select NAME from CITY
    where COUNTRYCODE = 'JPN';

-- Weather Observation Station 1
select CITY, STATE from STATION;

-- Weather Observation Station 3
select distinct CITY from STATION
    where ID % 2 = 0;

-- Weather Observation Station 5
SELECT city, length(city) AS LengthOfCity 
FROM station 
WHERE length(city) = (select min(length(city)) from station)
ORDER BY city
LIMIT 1;

SELECT city, length(city) AS LengthOfCity 
FROM station 
WHERE length(city) = (select max(length(city)) from station)
ORDER BY city
LIMIT 1;

