SELECT city, country FROM city LEFT JOIN country ON city.country_id=country.country_id;
SELECT payment_id, first_name, last_name FROM customer RIGHT JOIN payment ON payment.customer_id=customer.customer_id;
SELECT rental_id, first_name, last_name FROM rental FULL JOIN customer ON customer.customer_id=rental.customer_id;