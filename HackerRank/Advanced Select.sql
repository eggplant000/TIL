-- The PADS
SELECT CONCAT(name, '(', LEFT(occupation, 1), ')') 
FROM occupations
ORDER BY name;

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(occupation), 's.') 
FROM occupations
GROUP BY occupation
ORDER BY COUNT(*), occupation;


