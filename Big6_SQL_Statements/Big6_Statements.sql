# **Big6_SQL_Statements**

- Select | From | Where | Group By | Having | Order By

SAMPLE QUERIES

/*Select all data from the “actors” table.*/
SELECT *
FROM actors;

/*Select the first 100 of films release after 2000. */
SELECT *
FROM film
WHERE release_year > 2000
LIMIT 100;

/*Find all customers from Canada*/
Select *
FROM customers 
WHERE country = 'Canada';

/*Retrieve a list with all  actors whose first name is Chris and have Won an Emmy. */
SELECT *
FROM actor_award
WHERE first_name LIKE 'Chris'
AND award = 'Emmy';

/*Retrieve a list with all actors whose first name is either John or Chris.*/
SELECT *
FROM actors
WHERE first_name IN ('John', 'Chris');

/*Select all data from the “film” table, ordering it by “release_date” in descending order.*/
SELECT *
FROM film
ORDER BY release_date DESC;

/* Count the number of films released each year .*/
SELECT release_year, COUNT(film_id) AS total
FROM film
GROUP BY release_year;

/*Finding customers who have rented more than 10 movies, and show the number of rentals they made in DESC order .*/
SELECT customer_id, COUNT(rental_id) AS total_rentals
FROM rental
GROUP BY customer_id
HAVING COUNT(rental_id) > 10
ORDER BY total_rentals DESC;

