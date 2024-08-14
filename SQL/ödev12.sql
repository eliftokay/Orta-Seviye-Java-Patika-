SELECT COUNT (*) FROM film WHERE length>(SELECT AVG(length) FROM film);
SELECT COUNT (*) FROM film WHERE rental_rate=(SELECT MAX(rental_rate) FROM film);
SELECT * FROM film WHERE replacement_cost=(SELECT MIN (replacement_cost) FROM film) OR rental_rate =(SELECT MIN(rental_rate) FROM film);
SELECT customer.first_name, customer.last_name, customer.customer_id, COUNT(*) FROM payment INNER JOIN customer ON customer.customer_id=payment.customer_id GROUP BY customer.customer_id, customer.first_name, customer.last_name ORDER BY count DESC ;