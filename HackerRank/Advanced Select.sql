-- The PADS
SELECT CONCAT(name, '(', LEFT(occupation, 1), ')') 
FROM occupations
ORDER BY name;

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(occupation), 's.') 
FROM occupations
GROUP BY occupation
ORDER BY COUNT(*), occupation;


-- Binary Tree Nodes
SELECT DISTINCT *
FROM (SELECT t1.N AS N, IF(ISNULL(t1.P), 'Root', IF(ISNULL(t2.P), 'Leaf', 'Inner')) 
FROM BST t1
LEFT JOIN BST t2 
ON t1.N = t2.P) temp
ORDER BY N;