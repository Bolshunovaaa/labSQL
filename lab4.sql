SELECT UPPER(name) as city_name
FROM cities
WHERE region='N'
ORDER BY name
LIMIT 5, 5;

SELECT name, LENGTH(name) as name_length
FROM cities
WHERE LENGTH(name) NOT IN (8,9,10);

SELECT region, 
SUM(population) as total_population
FROM cities
WHERE region IN ('C','S')
GROUP BY region;

SELECT AVG(population) as avg_population
FROM cities
WHERE region = 'W';

SELECT COUNT(*) as total_cities
FROM cities
WHERE region = 'E';
