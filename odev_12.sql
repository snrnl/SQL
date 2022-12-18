--1 

SELECT COUNT(*) FROM film 
WHERE length> 
(
SELECT AVG(length) FROM film 
);

--2

SELECT COUNT(*) FROM film 
WHERE rental_rate = 
(SELECT MAX(rental_rate) FROM film) ;

--3 

SELECT * FROM film 
WHERE rental_rate = ANY 
(SELECT MIN(rental_rate) FROM film) 
	AND replacement_cost = ANY (
	SELECT MIN(replacement_cost) FROM film);

--4 

SELECT customer.first_name, customer.last_name, COUNT(*) as sayi FROM payment 
INNER JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY first_name, last_name 
ORDER BY sayi DESC ; 




