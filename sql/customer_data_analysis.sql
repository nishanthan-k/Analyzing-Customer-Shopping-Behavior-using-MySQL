use project;

CREATE TABLE customer_shopping_data (
  invoice_no VARCHAR(50),
  customer_id VARCHAR(50),
  gender VARCHAR(10),
  age INT,
  category VARCHAR(50),
  quantity INT,
  price DECIMAL(10,2),
  payment_method VARCHAR(50),
  invoice_date DATE,
  shopping_mall VARCHAR(50)
);

-- Dataset
SELECT *
FROM customer_shopping_data;

-- Total no of data points are in the dataset
SELECT COUNT(*) 
FROM customer_shopping_data;

-- Total no of customers 
SELECT COUNT(DISTINCT customer_id) 
FROM customer_shopping_data;

-- Total no of unique category 
SELECT COUNT(DISTINCT category) 
FROM customer_shopping_data;

-- Listing the category
SELECT DISTINCT categorydata;

-- Payment methods 
SELECT DISTINCT(payment_method)
FROM customer_shopping_data;

-- Most selling category
SELECT category
FROM customer_shopping_data
GROUP BY category
ORDER BY COUNT(category) DESC
LIMIT 1;

-- Least selling cateogry
SELECT category
FROM customer_shopping_data
GROUP BY category
ORDER BY COUNT(category)
LIMIT 1;

-- Most selling mall
SELECT shopping_mall
FROM customer_shopping_data
GROUP BY shopping_mall
ORDER BY COUNT(shopping_mall) DESC
LIMIT 1;

-- Least selling mall
SELECT shopping_mall
FROM customer_shopping_data
GROUP BY shopping_mall
ORDER BY COUNT(shopping_mall) 
LIMIT 1;

-- Mall which has high sales with respect to the amount
SELECT shopping_mall, SUM(price) OVER(PARTITION BY shopping_mall, price) AS total_sales
FROM customer_shopping_data
ORDER BY total_sales DESC
LIMIT 1;

-- Mall which has low sales with respect to the amount
SELECT shopping_mall, SUM(price) OVER(PARTITION BY shopping_mall, price) AS total_sales
FROM customer_shopping_data
ORDER BY total_sales 
LIMIT 1;

-- Category which has high sales with respect to the amount
SELECT category, SUM(price) OVER(PARTITION BY category, price) AS total_sales
FROM customer_shopping_data
ORDER BY total_sales DESC
LIMIT 1;

-- Top 5 customers
SELECT customer_id, SUM(price) OVER (PARTITION BY customer_id, price) as sales_amount
FROM customer_shopping_data
ORDER BY sales_amount DESC
LIMIT 5;

-- Most favourite mode of payment
SELECT payment_method, payment_count
FROM (
	SELECT payment_method, COUNT(payment_method) as payment_count
    FROM customer_shopping_data
    GROUP BY payment_method
) subquery
ORDER BY payment_count DESC;




