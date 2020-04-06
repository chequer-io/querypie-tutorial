--USING INNER JOIN
SELECT country.country_id, country.country, city.city_id, city.city FROM country INNER JOIN city ON country.country_id=city.country_id;

--USING INNER JOIN WITH 3 DIFFERENT TABLES
SELECT film.film_id, film.title, film_category.category_id, category.name
FROM film
INNER JOIN film_category ON film.film_id=film_category.film_id
INNER JOIN category ON film_category.category_id=category.category_id
ORDER BY film_id ASC;

--SAMPLE QUESTIONS
SELECT a.country_id, a.country, b.city_id, b.city, c.district, c.address 
FROM country a 
INNER JOIN city b ON a.country_id=b.country_id 
INNER JOIN address c ON b.city_id=c.city_id 
WHERE a.country='South Korea';
