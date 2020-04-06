--SELECT ALL COLUMNS
SELECT * FROM film;

--SELECT A SPECIFIC COULUM
SELECT film_id, title, rating, special_features FROM film;

--USING WHERE
SELECT film_id, title, rating, special_features FROM film WHERE rating='R';

--SAMPLE QUESTIONS
SELECT film_id, title, rental_rate, rental_duration FROM film WHERE rental_duration=3;
