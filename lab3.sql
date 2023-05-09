SELECT name 
FROM cities 
WHERE name LIKE '%ськ'

SELECT name 
FROM cities 
WHERE name LIKE '%донец%'

SELECT CONCAT(name, ' (', region, ')') AS city_region 
FROM cities 
WHERE population > 100000 
ORDER BY name ASC

SELECT name,
population, CONCAT(ROUND(population/4000000*100, 2), '%') AS percent_total_population 
FROM cities 
ORDER BY population DESC 
LIMIT 50

SELECT CONCAT(name, ' - ', ROUND(population/4000000*100, 2), '%') AS city_population_percent 
FROM cities 
WHERE population >= 40000 
ORDER BY population DESC
