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

SELECT SUM(quantity) AS total_number_of_orders
FROM order_details;

SELECT ROUND(AVG(price), 2) AS prive_avg
FROM products;


SELECT * FROM products;

SELECT * FROM customers
WHERE country NOT IN('Germany', 'France', 'UK');


SELECT * FROM customers
WHERE customer_id IN(SELECT customer_id FROM orders);

SELECT * FROM products
WHERE price BETWEEN 10 AND 15;

SELECT * FROM products
WHERE product_name BETWEEN 'Pavlova' AND 'Tofu'
ORDER BY Product_name DESC;

SELECT * FROM products
WHERE product_name BETWEEN 'Pavlova' AND 'Tofu'
ORDER BY Product_name ASC;

SELECT * FROM orders
WHERE order_date BETWEEN '2023-04-12' AND '2023-05-05';

SELECT customer_id AS id 
FROM customers;

SELECT product_name || ' ' || unit AS product
FROM products;

SELECT product_name AS "My Great Products"
FROM products;


CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE,
    course VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students (name, age, email, course)
VALUES ('John Doe', 22, 'john@example.com', 'Computer Science');

INSERT INTO students (name, age, email, course)
VALUES
('Alice', 21, 'alice@example.com', 'BCA'),
('Bob', 23, 'bob@example.com', 'MCA'),
('Charlie', 20, 'charlie@example.com', 'B.Tech');

SELECT *
FROM students
WHERE age > 20
AND course = 'BCA';

SELECT *
FROM students
WHERE course = 'BCA'
OR course = 'MCA';

SELECT *
FROM students
WHERE name LIKE 'A%';

SELECT *
FROM students
ORDER BY age DESC;

SELECT *
FROM students
ORDER BY age ASC;

SELECT *
FROM students
LIMIT 5;