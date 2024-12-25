SELECT order3.order_is, order3.customer_name, product3.product_name, product3.price
FROM order3
CROSS JOIN product3;

SELECT o1.order_is AS order_1, o1.customer_name, o2.order_is AS order_2
FROM order3 o1
JOIN order3 o2 ON o1.customer_name = o2.customer_name AND o1.order_is != o2.order_is;

SELECT order3.order_is, order3.customer_name, product3.product_name, product3.price
FROM order3
NATURAL JOIN product3;

SELECT order3.order_is, order3.customer_name
FROM order3
WHERE NOT EXISTS (
    SELECT 1
    FROM product3
    WHERE product3.product_id = order3.product_id
);
