CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 250.00, 101),
(2, '2023-01-20', 180.00, 102),
(3, '2023-02-10', 300.00, 103),
(4, '2023-02-22', 220.00, 104),
(5, '2023-03-05', 150.00, 105),
(6, '2023-03-15', 190.00, 106),
(7, '2023-04-20', 400.00, 107),
(8, '2023-04-25', 100.00, 108),
(9, '2023-05-12', 270.00, 109),
(10, '2023-06-18', 350.00, 110),
(11, '2023-06-30', 430.00, 111),
(12, '2023-07-04', 380.00, 112);
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    orders
GROUP BY
    YEAR(order_date), MONTH(order_date)
ORDER BY
    YEAR(order_date), MONTH(order_date);