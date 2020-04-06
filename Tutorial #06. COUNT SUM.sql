--USING COUNT
SELECT COUNT(*) FROM address; SELECT COUNT(address2) FROM address;

--USING COUNT WITH DISTINCT
SELECT COUNT(rental_duration) FROM film; 
SELECT COUNT(DISTINCT rental_duration) FROM film;

--USING SUM
SELECT SUM(length) FROM film; SELECT SUM(length)/60 AS entire_hour from film;

--SAMPLE QUESTIONS
SELECT COUNT(DISTINCT replacement_cost) FROM film;
