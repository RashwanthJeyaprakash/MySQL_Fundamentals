# **Big6_SQL_Statements**

- Select | From | Where | Group By | Having | Order By

SAMPLE QUERIES

/*Select all data from the “actors” table.*/
SELECT *
FROM actors;

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



### 
