--USING DATEFORMAT WITH COUNT
SELECT DATE_FORMAT(rental_date, '%Y-%m-%d') AS date, count(rental_id) AS count_rental FROM rental GROUP BY date;

--USING DATEFORMAT GROUP/ORDER BY
SELECT DATE_FORMAT(rental_date, '%W') AS day_of_the_week, count(rental_id) AS count_rental FROM rental GROUP BY day_of_the_week ORDER BY count_rental DESC;

--USING DATEDIFF
SELECT rental_id, customer_id, rental_date, return_date, DATEDIFF(return_date, rental_date) AS rental_duration FROM rental;
