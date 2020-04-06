--ADVANCED JOIN QUERY (1)
SELECT   c.customer_id,                                           
         CONCAT(c.first_name, " ", c.last_name) AS customer_name,
         c.email,
         COUNT(r.rental_id) as overdue_number,
         SUM(p.amount-f.rental_rate) as overdue_amount
FROM     rental r
         INNER JOIN customer c  ON r.customer_id = c.customer_id  
         INNER JOIN payment p   ON r.rental_id = p.rental_id   
         INNER JOIN inventory i ON r.inventory_id = i.inventory_id
         INNER JOIN film f      ON i.film_id = f.film_id
         AND f.rental_duration < DATEDIFF(r.return_date, r.rental_date)
GROUP BY c.customer_id 
ORDER BY overdue_number ;
