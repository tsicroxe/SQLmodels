#1.
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
	LEFT JOIN address ON customer.address_id = address.address_id
WHERE address.city_id = 312

#2.
SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre
FROM film
	JOIN film_category ON film.film_id = film_category.film_id
	JOIN category ON category.category_id = film_category.category_id
WHERE category.name= "Comedy"

#3.
SELECT film.film_id, film.title, CONCAT(first_name , ' ' , last_name) AS actor_name, film.description, film.release_year, actor.actor_id
FROM film
	JOIN film_actor ON film.film_id = film_actor.film_id
	JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE actor.actor_id = 5

#4.
SELECT store_id, city_id, customer.first_name, customer.last_name, customer.email, address.address
FROM customer	
	LEFT JOIN address ON customer.address_id = address.address_id
WHERE customer.store_id = 1 AND address.city_id IN (1, 42, 312, 459)

#5.
SELECT film.title, film.description, film.release_year, film.rating, film.special_features
FROM film	
	LEFT JOIN film_actor ON film_actor.film_id = film.film_id
WHERE film.rating = 'G' AND film.special_features LIKE "%Behind the scenes%" AND actor_id = 15

#6. 
SELECT film.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name
FROM actor
	LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id
	LEFT JOIN film ON film.film_id = film_actor.film_id
WHERE film.film_id = 369

#7.
SELECT film.title, film.description, film.release_year, film.rating, film.rental_rate, film.special_features, category.name as genre
FROM film	
	JOIN film_category ON film.film_id = film_category.film_id
	JOIN category ON category.category_id = film_category.category_id
WHERE category.name = "Drama" and rental_rate = 2.99

#8. 
SELECT film.title, CONCAT(actor.first_name, ' ', actor.last_name) as actor_name, film.description, film.release_year, film.rating, film.special_features, category.name as genre
FROM film	
	LEFT JOIN film_category ON film.film_id = film_category.film_id
	LEFT JOIN category ON category.category_id = film_category.category_id
	LEFT JOIN film_actor ON film_actor.film_id = film.film_id
	LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE actor.first_name = "Sandra" and actor.last_name = "Kilmer" and category.name = "Action"