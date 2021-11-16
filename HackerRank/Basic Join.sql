-- Population Census
SELECT SUM(city.population) 
FROM city INNER JOIN country ON city.CountryCode = country.Code
WHERE country.continent = 'Asia';


-- African Cities
SELECT city.Name 
FROM city INNER JOIN country ON city.CountryCode = country.Code
WHERE country.Continent = 'Africa';


-- Average Population of Each Continent
SELECT country.Continent, FLOOR(AVG(city.Population))
FROM city INNER JOIN country ON city.CountryCode = country.Code
GROUP BY country.Continent;


-- The Report
SELECT IF(Grades.Grade >= 8, Students.Name, NULL), Grades.Grade, Students.Marks
FROM Students, Grades
WHERE Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
ORDER BY Grades.Grade DESC, COALESCE(Students.Name, Students.Marks);


-- Top Competitors
SELECT id, name
FROM (SELECT Hackers.hacker_id AS id, Hackers.name AS name, COUNT(Challenges.challenge_id) AS cnt
FROM Hackers, Difficulty, Challenges, Submissions
WHERE (Hackers.hacker_id = Submissions.hacker_id)
AND (Difficulty.difficulty_level = Challenges.difficulty_level)
AND (Submissions.challenge_id = Challenges.challenge_id)
AND (Submissions.score = Difficulty.score)
GROUP BY Hackers.hacker_id, Hackers.Name) t
WHERE cnt > 1
ORDER BY cnt DESC, id ASC;


-- Contest Leaderboard
SELECT Hackers.hacker_id, name, tot_score
FROM Hackers
INNER JOIN
(SELECT hacker_id, SUM(max_score) tot_score
FROM (SELECT hacker_id, MAX(score) max_score FROM Submissions
GROUP BY hacker_id, challenge_id) t1
GROUP BY hacker_id
HAVING SUM(max_score) > 0) t2
ON Hackers.hacker_id=t2.hacker_id
ORDER BY tot_score DESC, hacker_id ASC
