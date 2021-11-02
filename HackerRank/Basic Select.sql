-- Revising the Select Query I
SELECT * FROM CITY
    WHERE population > 100000 and countrycode = 'USA';


-- Revising the Select Query II
SELECT name FROM  CITY
    WHERE population > 120000 and countrycode = 'USA';


-- Select All
SELECT * FROM CITY;


-- Select By ID
SELECT * FROM CITY
    WHERE ID = 1661;


-- Japanese Cities' Attributes
SELECT * FROM CITY
    WHERE countrycode = 'JPN';


-- Japanese Cities' Names
SELECT NAME FROM CITY
    WHERE COUNTRYCODE = 'JPN';


-- Weather Observation Station 1
SELECT CITY, STATE FROM STATION;


-- Weather Observation Station 3
SELECT distinct CITY FROM STATION
    WHERE ID % 2 = 0;


-- Weather Observation Station 5
SELECT city, LENGTH(city) AS LengthOfCity 
FROM station 
WHERE LENGTH(city) = (SELECT min(LENGTH(city)) FROM station)
ORDER BY city
LIMIT 1;

SELECT city, LENGTH(city) AS LengthOfCity 
FROM station 
WHERE LENGTH(city) = (SELECT max(LENGTH(city)) FROM station)
ORDER BY city
LIMIT 1;


-- Weather Observation Station 6 (MySQL, MS SQL Server)
SELECT DISTINCT city FROM station 
    WHERE city RLIKE '^[aeiou]'

SELECT DISTINCT city FROM station
    WHERE city LIKE '[aeiou]%';


-- Weather Observation Station 7 (MySQL, MS SQL Server)
SELECT DISTINCT city FROM station 
    WHERE city RLIKE '[aeiou]$'

SELECT DISTINCT city FROM station 
    WHERE city LIKE '%[aeiou]'


-- Weather Observation Station 8 (MySQL, MS SQL Server)
SELECT DISTINCT city FROM station 
    WHERE city RLIKE '^[aeiou]' and city RLIKE '[aeiou]$'

SELECT DISTINCT city FROM station 
    WHERE city LIKE '[aeiou]%[aeiou]'


-- Weather Observation Station 9
SELECT DISTINCT city FROM station 
    WHERE city RLIKE '^[^aeiou]'


-- Weather Observation Station 10
SELECT DISTINCT city FROM station 
    WHERE city RLIKE '[^aeiou]$'


-- Weather Observation Station 10
SELECT DISTINCT city FROM station 
    WHERE city RLIKE '^[^aeiou]' OR city RLIKE '[^aeiou]$'


-- Weather Observation Station 12
SELECT DISTINCT city FROM station 
    WHERE city RLIKE '^[^aeiou]' AND city RLIKE '[^aeiou]$'


-- 