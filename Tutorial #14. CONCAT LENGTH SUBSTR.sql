--USING CONCAT
SELECT customer_id,
       CONCAT(first_name, " ", last_name) AS full_name
FROM   customer ;

--USING LENGTH
SELECT customer_id,
       CONCAT(first_name, " ", last_name) AS full_name,
       LENGTH(CONCAT(first_name, last_name)) AS length_name
FROM   customer ;

--USING SUBSTR
SELECT customer_id,
       CONCAT(first_name, " ", last_name) AS full_name,
       SUBSTR(CONCAT(first_name, " ", last_name), 1, 3) AS short_name
FROM   customer ;

--SAMPLE QUESTIONS WITH REPEAT, INSTR
SELECT 	customer_id, 
		CONCAT(first_name, '', last_name) AS full_name, 
		CONCAT(SUBSTR(email, 1, 3), 
		REPEAT('*', INSTR(email, '@')-1-3), '@sakilacustomer.org') AS secret_email 
FROM customer;
