--USING GROUP BY
SELECT store_id, count(active) FROM customer WHERE active=1 GROUP BY store_id;

--USING HAVING
SELECT rating, COUNT(rating) AS 'number' FROM film GROUP BY rating HAVING number>180 ORDER BY number DESC;

--SAMPLE QUESTIONS
SELECT rental_rate, COUNT(rental_rate) AS number FROM film GROUP BY rental_rate;
