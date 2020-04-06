--ORDER BY A COLUMN (NAME)
SELECT film_id, title, rental_rate, rental_duration FROM film WHERE rental_duration=5 ORDER BY rental_rate DESC;

--ORDER BY A COLUMN (NUMBER)
SELECT film_id, title, rental_rate, rental_duration FROM film WHERE rental_duration=5 ORDER BY 3 ASC;

--SAMPLE QUESTIONS
SELECT customer_id, store_id, first_name, last_name, email FROM customer WHERE store_id=1 ORDER BY first_name;
