--USING LEFT JOIN
SELECT a.rental_id, a.customer_id, b.film_id, b.inventory_id FROM rental a LEFT JOIN inventory b ON a.inventory_id=b.inventory_id;

--USING RIGHT JOIN
SELECT a.rental_id, a.customer_id, b.film_id, b.inventory_id FROM rental a RIGHT JOIN inventory b ON a.inventory_id=b.inventory_id;

--SAMPLE QUESTIONS
SELECT address.address, address.address2, city.city, city.city_id FROM address LEFT JOIN city ON address.city_id=city.city_id WHERE address2 IS NULL;
SELECT address.address, address.address2, city.city, city.city_id FROM address RIGHT JOIN city ON address.city_id=city.city_id WHERE address2 IS NULL;
