USE regex;
CREATE TABLE order3 (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_id INT);

INSERT INTO order3 (order_id, customer_name, product_id) VALUES
(1, 'Ravi', 101),
(2, 'Sita', 102),
(3, 'Anjali', 103),
(4, 'Vikram', 104),
(5, 'Rajesh', 105);

CREATE TABLE product3 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2));


INSERT INTO product3 (product_id, product_name, price) VALUES
(101, 'Laptop', 50000.00),
(102, 'Smartphone', 15000.00),
(103, 'Tablet', 20000.00),
(104, 'Headphones', 2000.00),
(105, 'Watch', 5000.00);

SELECT order3.order_id, order3.customer_name, product3.product_name, product3.price
FROM order3
LEFT JOIN product3 ON order3.product_id = product3.product_id;

SELECT order3.order_id, order3.customer_name, product3.product_name, product3.price
FROM order3
RIGHT JOIN product3 ON order3.product_id = product3.product_id;

SELECT A.order_id AS Order1, A.customer_name AS Customer1, B.order_id AS Order2, B.customer_name AS Customer2
FROM order3 A, order3 B
WHERE A.product_id = B.product_id AND A.order_id != B.order_id;

SELECT order3.order_id, order3.customer_name, product3.product_name, product3.price
FROM order3
LEFT JOIN product3 ON order3.product_id = product3.product_id
UNION
SELECT order3.order_id, order3.customer_name, product3.product_name, product3.price
FROM order3
RIGHT JOIN product3 ON order3.product_id = product3.product_id;
