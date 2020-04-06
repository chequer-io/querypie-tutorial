--USING CASE
SELECT customer_id, active, CASE WHEN active=1 THEN 'ACTIVE' ELSE 'INACTIVE' END as ‘Status’ FROM customer;

--USING CASE WITH SPECIFIC RANGES
SELECT title, rental_duration,
    CASE 
        WHEN rental_duration <=3 THEN 'SHORT'
        WHEN rental_duration > 3 AND rental_duration < 6 THEN 'MEDIUM'
        WHEN rental_duration >=6 THEN 'LONG'
        ELSE NULL
    END AS 'Duration'
FROM film;

--SAMPLE QUESTIONS
SELECT customer_id, amount,
    CASE 
        WHEN amount >= 9.99 THEN 'High'
        WHEN amount < 9.99 AND amount >3.99 THEN 'Medium'
        WHEN amount <= 3.99 THEN 'Low'
        ELSE NULL
    END as 'Payment Amount'
FROM payment
