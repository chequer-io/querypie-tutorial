--USING LIKE
SELECT title, description FROM film
WHERE description LIKE '%thrilling%';

--SAMPLE QUESTIONS
SELECT country_id, country FROM country WHERE country LIKE '%korea%';
SELECT city_id, city, country_id FROM city WHERE country_id=86;
SELECT address_id, address, district, city_id FROM address WHERE city_id IN (113, 268, 357, 539, 553);
