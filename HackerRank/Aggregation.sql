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
    LIMIT 1