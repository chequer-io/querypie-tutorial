--USING AVG
SELECT AVG (length) FROM film; SELECT AVG (length) AS average, SUM(length)/COUNT(length) AS 'sum/count' FROM film;

--USING MIN, MAX
SELECT MIN(amount) AS Minimum, MAX(amount) AS Maximum FROM payment;

--SAMPLE QUESTIONS
SELECT AVG (replacement_cost) AS Average_Cost, MIN(replacement_cost) AS Minimum_Cost, MAX(replacement_cost) AS Maximum_Cost FROM film;
