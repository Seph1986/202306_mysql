-- 1RA RESPUESTA
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM address
JOIN customer ON address.address_id = customer.address_id
JOIN city ON city.city_id = address.city_id
WHERE city.city_id = 312

-- 2DA RESPUESTA
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE category.name = 'Comedy';

-- 3RA RESPUESTA
SELECT actor.actor_id, concat_ws(' ',actor.first_name, actor.last_name) AS actor_full_name , film.title, film.description, film.release_year
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE actor.actor_id = 5;

-- 4TA RESPUESTA
SELECT concat_ws(' ',customer.first_name,customer.last_name) AS customer, customer.email, address.address
FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN store ON store.store_id = customer.store_id
JOIN city ON city.city_id = address.city_id
WHERE store.store_id = 1 AND (city.city_id = 1 OR city.city_id = 42 OR city.city_id = 312 OR city.city_id = 459)

--5TA RESPUESTA
SELECT film.title, film.description, film.release_year, film.rating, film.special_features
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE film.rating = 'G' AND
film.special_features LIKE  '%Behind the Scenes%' AND actor.actor_id = 15;

-- 6TA RESPUESTA
SELECT film.film_id, film.title, actor.actor_id, CONCAT_WS(' ', actor.first_name, actor.last_name) AS actor_name
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE film.film_id = 369

-- 7MA RESPUESTA
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE film.rental_rate = 2.99 AND category.name = 'Drama';

--8VA RESPUESTA
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name, 
CONCAT_WS(' ', actor.first_name, actor.last_name) AS actor_full_name
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON  film_actor.actor_id = actor.actor_id  
WHERE actor.first_name = 'Sandra' AND actor.last_name = 'Kilmer'
AND category.name = 'Action';