SELECT DISTINCT replacement_cost FROM film;

SELECT COUNT(DISTINCT replacement_cost) FROM film;

SELECT COUNT(*) FROM film
WHERE title LIKE 'T%' and rating = 'G'

SELECT COUNT(*) FROM country
WHERE country LIKE '_____'

SELECT COUNT(*) FROM city
WHERE city ILIKE '%r';