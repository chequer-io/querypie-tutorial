--RENAME COLUMN NAME USING AS
SELECT film_id, title AS China_Movie, description, rental_rate 
FROM film
WHERE description LIKE '%china%'
ORDER BY rental_rate ASC;

--USING DISTINCT
SELECT DISTINCT rating FROM film;

--USING NULL
SELECT * FROM address WHERE address2 IS NULL;

--SAMPLE QUESTIONS
SELECT DISTINCT rental_duration FROM film ORDER BY rental_duration ASC;
