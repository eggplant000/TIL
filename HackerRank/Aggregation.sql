-- Revising Aggregations - The Count Function
SELECT COUNT(*) FROM city
    WHERE population > 100000;


-- Revising Aggregations - Averages
SELECT AVG(population) FROM city
    WHERE district = 'california';


-- Average Population
SELECT FLOOR(AVG(population)) FROM city;


-- Japan Population
SELECT SUM(population) FROM city
    WHERE countrycode = 'JPN';


-- Population Density Difference
SELECT MAX(population)-MIN(population) FROM city;


-- The Blunder
SELECT CEIL(AVG(salary)-AVG(REPLACE(salary, 0, ''))) FROM employees;


-- Top Earners
SELECT months*salary, COUNT(*) FROM employee
    WHERE months*salary = (SELECT MAX(months*salary) FROM employee);

SELECT months*salary, COUNT(*) FROM employee
    GROUP BY months*salary
    ORDER BY months*salary DESC
    LIMIT 1;


-- Weather Observation Station 2
SELECT ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2) FROM station;


-- Weather Observation Station 13
SELECT TRUNCATE(SUM(lat_n), 4) FROM station
    WHERE lat_n BETWEEN 38.7880 AND 137.2345;


-- Weather Observation Station 14
SELECT TRUNCATE(MAX(lat_n), 4) FROM station
    WHERE lat_n < 137.2345;


-- Weather Observation Station 15
SELECT ROUND(long_w, 4) FROM station
    WHERE lat_n = (SELECT MAX(lat_n) FROM station
                    WHERE lat_n < 137.2345);


-- Weather Observation Station 16
SELECT ROUND(MIN(lat_n), 4) FROM station
    WHERE lat_n > 38.7780;


-- Weather Observation Station 17
SELECT ROUND(long_w, 4) FROM station
    WHERE lat_n = (SELECT MIN(lat_n) FROM station
                    WHERE lat_n > 38.7780);


-- Weather Observation Station 18
SELECT ROUND(ABS(MIN(lat_n)-max(lat_n)) + ABS(MIN(long_w)-MAX(long_w)), 4) FROM station;


-- Weather Observation Station 19
SELECT ROUND(SQRT(POWER(MIN(lat_n)-MIN(long_w), 2) + POWER(MAX(lat_n)-MAX(long_w), 2)), 4) FROM station;


-- Weather Observation Station 20
SELECT ROUND(lat_n, 4) FROM (SELECT lat_n, PERCENT_RANK() over (ORDER BY lat_n) AS per FROM station) AS temp
    WHERE per = 0.5;

