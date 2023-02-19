-- Database: dvdrental

-- DROP DATABASE IF EXISTS dvdrental;

CREATE DATABASE dvdrental
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	Quiz 1.
	SELECT * FROM customer;
	
	Quiz 2.
	SELECT first_name || '' || last_name AS full_name FROM customer;
	
	Quiz 3.
	SELECT DISTINCT create_date  FROM customer;
	
	Quiz 4.
	SELECT * FROM customer ORDER BY first_name DESC;
	
	Quiz 5.
	SELECT film_id, title, description, release_year, rental_rate FROM film
	ORDER BY rental_rate;
	
	Quiz 6.
	SELECT DISTINCT c.last_name, a.address, a.phone FROM customer AS c
	INNER JOIN address AS a ON a.address_id = c.address_id 
	WHERE a.district = 'Texas'; 
	
	Quiz 7.
	SELECT * FROM film WHERE film_id IN (15, 150);
	
	Quiz 8.
	SELECT F.film_id, F.title, F.description, F.length, F.rental_rate
	FROM film AS F WHERE F.title = 'Avenger';
	
	Quiz 9.
	SELECT film_id, title, description, rental_rate, rental_duration FROM film WHERE title LIKE '%av%';
	
	Quiz 10.
	SELECT * FROM film ORDER BY rental_rate DESC LIMIT 10;
	
	Quiz 11.
	SELECT * FROM film ORDER BY rental_rate DESC OFFSET 10 LIMIT 10;
	
	QUIZ 12.
	SELECT first_name, last_name, amount, payment_date FROM customer 
	INNER JOIN payment USING(customer_id) ORDER BY last_name;
	
	Quiz 13.
	
	SELECT * FROM film WHERE film_id
	 NOT IN(SELECT film_id FROM inventory I LEFT JOIN film F USING(film_id));
	
	Quiz 14.
	SELECT city, country FROM city INNER JOIN country USING(country_id);
	
	Quiz 13.
	SELECT C.customer_id, C.first_name || '' || C.last_name AS name, P.amount,
	P.payment_date, S.staff_id FROM customer C INNER JOIN payment P USING(customer_id) INNER JOIN staff S
	USING(staff_id);
	
	
 	
	