SELECT name, population 
FROM cities
ORDER BY population DESC
LIMIT 10 OFFSET 10;

SELECT name
FROM cities
ORDER BY name DESC
LIMIT 30;

SELECT region, name, population 
FROM cities
ORDER BY population DESC, region ASC;

SELECT DISTINCT region
FROM cities;

SELECT region, name
FROM cities
ORDER BY region DESC, name DESC;