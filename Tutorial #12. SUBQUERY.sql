--USING SUBQUERY WITH WHERE
SELECT customer_id, first_name, last_name, active, email 
FROM customer 
WHERE customer_id IN (SELECT customer_id FROM payment WHERE amount=9.99) AND active=1;

--USING SUBQUERY WITH FROM
SELECT customer_id, SUM(amount) 
FROM (SELECT payment_id, customer_id, amount FROM payment a WHERE a.staff_id=1) sub 
WHERE sub.amount<2.99 
GROUP BY sub.customer_id 
HAVING SUM(sub.amount)>=5;

--SAMPLE QUESTIONS
SELECT a.customer_id, a.first_name, a.last_name, b.total
FROM   customer a
INNER JOIN
              (SELECT  customer_id, SUM(amount) as total
              FROM     payment
              GROUP BY customer_id
              ORDER BY total desc
              LIMIT    10) b
       ON     a.customer_id=b.customer_id;
