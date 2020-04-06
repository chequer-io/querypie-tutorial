--ADVANCED CASE QUERY (1)
SELECT   CASE WHEN total_amount < 100 THEN '4_NEW'
              WHEN total_amount >= 100 AND total_amount < 150 THEN '3_SILVER'
              WHEN total_amount >= 150 AND total_amount < 200 THEN '2_GOLD'
              WHEN total_amount >= 200 THEN '1_VIP'
              END      AS membership,
              COUNT(1) AS count
FROM     (SELECT   customer_id,
                   SUM(amount) AS total_amount
          FROM     payment
          GROUP BY customer_id) sub
GROUP BY membership ;

--ADVANCED CASE QUERY (2)
SELECT customer_id, active, 
        CASE WHEN active=1 THEN 'active' 
        ELSE 'inactive' END AS status 
FROM customer;

SELECT  CASE WHEN active=1 THEN 'active' 
             ELSE 'inactive' END AS status, 
             COUNT(1) AS count 
FROM customer 
GROUP BY status;

--ADVANCED CASE QUERY (3)
SELECT   CASE WHEN rental_duration <=3 THEN 'SHORT'
              WHEN rental_duration > 3 AND  rental_duration < 6 THEN 'MEDIUM'
              WHEN rental_duration >=6 THEN 'LONG'
              ELSE NULL
         END AS duration,
         COUNT(1) AS count
FROM     film
GROUP BY duration;
