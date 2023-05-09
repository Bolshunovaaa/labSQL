SELECT region, SUM(population) AS sum_population
FROM cities
GROUP BY region;

SELECT region, SUM(population) AS sum_population, COUNT(name) AS count_name
FROM cities
GROUP BY region
HAVING COUNT(name) >= 10;

SELECT name, population, region
FROM cities
WHERE region IN (
     SELECT region
     FROM cities
     GROUP BY region
     HAVING COUNT(region) >= 5)
ORDER BY population DESC
LIMIT 5 OFFSET 10;

SELECT region, SUM(population) AS population
FROM cities, regions
WHERE region IN (
    SELECT uuid
    FROM regions
    WHERE uuid IN (
        SELECT region
        FROM cities
        WHERE population > 300000)
)
GROUP BY region;

SELECT name, SUM(population) AS population
FROM cities
WHERE region IN (
    SELECT region
    FROM cities
    GROUP BY region
    HAVING COUNT(DISTINCT region) <= 5
)
GROUP BY name
HAVING population NOT BETWEEN 150000 AND 500000;


