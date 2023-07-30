-- 1era respuesta
SELECT countries.name, languages.language, languages.percentage
FROM countries 
JOIN languages ON countries.id = languages.country_id
WHERE language = 'Slovene'
ORDER BY languages.percentage DESC;

--2da respuesta
SELECT countries.name, COUNT(cities.name) AS cities
FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY countries.name
ORDER BY cities DESC

--3ra respuesta
SELECT cities.country_code, cities.name, cities.population
FROM cities
WHERE cities.population > 500000 AND cities.country_code = 'MEX'

--4ta respuesta
SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC

--5ta respuesta
SELECT name, surface_area, population
FROM countries
WHERE surface_area < 501 AND population > 100000

--6ta respuesta
SELECT name, government_form, capital, life_expectancy
FROM countries
WHERE government_form = 'Constitutional Monarchy' AND capital > 200 AND life_expectancy > 75
ORDER BY name 

--7ma respuesta
SELECT countries.name, cities.name, cities.district, cities.population
FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'Argentina' AND cities.district = 'Buenos Aires' AND cities.population > 500000


--8va respuesta
SELECT region , count(name) AS count_of_countries
FROM countries
GROUP BY region
ORDER BY count_of_countries DESC
