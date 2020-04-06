--USING TRUNCATE
SELECT customer_id, TRUNCATE(SUM(amount), 0) AS total_payment FROM payment GROUP BY customer_id;

--USING ROUND
SELECT customer_id, ROUND(AVG(amount), 2) AS avg_payment FROM payment GROUP BY customer_id;

--USING MOD
SELECT payment_id, customer_id, staff_id, rental_id, amount, payment_date, last_update, MOD(payment_id, 3) AS sep_group FROM payment;
