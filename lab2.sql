SELECT population, name 
FROM cities
WHERE population >= 1000000
ORDER BY name ASC;

SELECT population, region, name 
FROM cities
WHERE region = 'E' OR region = 'W'
ORDER BY population ASC;

SELECT population, region, name 
FROM cities
WHERE population >= 1000000 AND region IN ('S', 'C', 'N')
ORDER BY name ASC;

SELECT population, region, name 
FROM cities
WHERE (population >= 150000 AND population <=350000)  AND region IN ('E', 'W', 'N')
ORDER BY name ASC
LIMIT  20;

SELECT population, region, name 
FROM cities
WHERE NOT region IN ('E', 'W')
ORDER BY population DESC
LIMIT  10 OFFSET 10;

SELECT population, region, name 
FROM cities
WHERE NOT region IN ('E', 'W')
ORDER BY population DESC
LIMIT  10 OFFSET 10;