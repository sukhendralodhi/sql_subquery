SELECT COUNT(DISTINCT country) FROM customers;
SELECT * FROM customers
WHERE city = 'London';

SELECT * FROM customers
WHERE customer_id = 19;

SELECT * FROM customers
WHERE customer_id > 80;

SELECT * FROM products
ORDER BY price DESC;

SELECT * FROM products
ORDER BY product_name DESC;

SELECT * FROM customers
LIMIT 20;

SELECT * FROM customers
LIMIT 20 OFFSET 40;

SELECT MAX(price) FROM products;

SELECT COUNT(customer_id) AS total_customers
FROM customers
WHERE city = 'London';

SELECT * FROM order_details;