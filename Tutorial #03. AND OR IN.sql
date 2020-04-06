--USING AND
SELECT film_id, title, rental_rate, length 
FROM film
WHERE rental_rate=0.99 AND length>180;

--USING OR/IN
SELECT address_id, address, district, city_id
FROM address
WHERE district='Texas' OR district='California';

SELECT address_id, address, district, city_id
FROM address
WHERE district IN ('Texas', 'California');

--SAMPLE QUESTIONS
SELECT film_id, title, rental_rate, rental_duration
FROM film
WHERE rental_duration NOT IN (3,4,5)
ORDER BY rental_duration, rental_rate ASC;
