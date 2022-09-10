/* How many official languages are there in the world? */

SELECT count(*) FROM countrylanguage WHERE isofficial = TRUE;

/* what is the average life expectancy in the world */
/SELECT avg(lifeexpectancy) FROM country; 

/* What is the average population for the cities in netherlands? */
SELECT avg(population) AS "Average population" FROM city WHERE countrycode = 'NLD';