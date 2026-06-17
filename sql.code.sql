DROP DATABASE customer_analysis;
CREATE DATABASE customer_analysis;
USE customer_analysis;
CREATE TABLE customer_details(
      customer_id INT,
      sex VARCHAR(10),
      customer_age INT,
      tenure INT 
      );
CREATE TABLE basket_details(
     customer_id BIGINT,
     product_id BIGINT,
     basket_date DATE,
     basket_count INT
     );
     SELECT * FROM csv.customer_details LIMIT 5;
     SELECT * FROM csv.basket_details LIMIT 5;
     SELECT COUNT(*)
     FROM csv.customer_details; 
      SELECT COUNT(*)
      FROM csv.basket_details; 
      SELECT *
      FROM csv.customer_details 
      WHERE customer_age IS NULL;
      SELECT *
      FROM csv.customer_details 
      WHERE customer_id IS NULL;
      SELECT *
      FROM csv.customer_details 
      WHERE tenure IS NULL;
      SELECT *
      FROM csv.basket_details 
      WHERE product_id IS NULL;
      SELECT *
      FROM csv.basket_details 
      WHERE basket_date IS NULL;
      SELECT *
      FROM csv.basket_details 
      WHERE basket_count IS NULL;
      SELECT COUNT(*)
      FROM csv.customer_details c
      JOIN csv.basket_details b
      ON c.customer_id = b.customer_id;
      SELECT COUNT(DISTINCT c.customer_id)
FROM csv.customer_details c
JOIN csv.basket_details b
ON c.customer_id = b.customer_id;
SELECT sex, 
COUNT(*)
FROM csv.customer_details
GROUP BY sex;
      SELECT * FROM csv.customer_details 
WHERE sex = 'kvkktalepsilindi' OR sex = 'UNKNOWN';
SELECT AVG(customer_age)
FROM csv.customer_details;
SELECT MIN(customer_age), MAX(customer_age)
FROM csv.customer_details;
SELECT * FROM csv.customer_details
WHERE customer_age < 0 OR customer_age > 120;
SELECT 
    sex,
    customer_age,
    CASE 
        WHEN customer_age IS NULL THEN 'Unknown'
        WHEN customer_age < 18 THEN 'Minor'
        WHEN customer_age BETWEEN 18 AND 60 THEN 'Adult'
        ELSE 'Senior Citizen'
    END AS age_group
FROM csv.customer_details;
SELECT AVG(customer_age) FROM csv.customer_details;
SET SQL_SAFE_UPDATES = 0;
UPDATE csv.customer_details
SET customer_age = (2026 - customer_age)
WHERE customer_age > 1900;
UPDATE csv.customer_details
SET customer_age = NULL
WHERE customer_age < 0 OR customer_age > 120;
SET SQL_SAFE_UPDATES = 1;
SELECT MAX(tenure), MIN(tenure)
FROM csv.customer_details;
SELECT 
    sex, 
    AVG(customer_age) AS average_age,
    COUNT(*) AS total_customers
FROM csv.customer_details
WHERE sex IS NOT NULL 
  AND customer_age IS NOT NULL
GROUP BY sex;                                    
SELECT SUM(basket_count) 
FROM csv.basket_details;
SELECT product_id,
       SUM(basket_count) total_quantity
FROM csv.basket_details
GROUP BY product_id
ORDER BY total_quantity DESC;
SELECT customer_id, tenure
FROM csv.customer_details
ORDER BY tenure DESC
LIMIT 10;
SELECT MIN(customer_age), MAX(customer_age)
FROM csv.customer_details;
SELECT AVG(customer_age)
FROM csv.customer_details;
SELECT AVG(tenure)
FROM csv.customer_details;
SELECT YEAR(basket_date) AS year,
       SUM(basket_count) AS total_baskets
FROM csv.basket_details
GROUP BY YEAR(basket_date)
ORDER BY total_baskets DESC;
SELECT YEAR(basket_date) AS year,
       COUNT(*) AS total_orders
FROM csv.basket_details
GROUP BY YEAR(basket_date)
ORDER BY total_orders DESC;
SELECT customer_id,
 SUM(basket_count) AS total_purchase
 FROM csv.basket_details
 GROUP BY customer_id
 ORDER BY total_purchase DESC
 LIMIT 10;
 SELECT customer_id,
       COUNT(*) AS total_orders
FROM csv.basket_details
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 10;
 SELECT COUNT(DISTINCT product_id) AS unique_products
FROM csv.basket_details;
 SELECT product_id,
       COUNT(*) AS total_orders
FROM csv.basket_details
GROUP BY product_id
ORDER BY total_orders DESC
LIMIT 10;
SELECT MONTH(basket_date) AS month,
       SUM(basket_count) AS total_purchases
FROM csv.basket_details
GROUP BY MONTH(basket_date)
ORDER BY month;