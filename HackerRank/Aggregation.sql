-- Revising Aggregations - The Count Function
SELECT COUNT(*) FROM city
    WHERE population > 100000;


-- Revising Aggregations - Averages
SELECT AVG(population) FROM city
    WHERE district = 'california';