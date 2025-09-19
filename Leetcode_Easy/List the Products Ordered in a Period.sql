SELECT
    product_name,
    SUM(unit) as unit
FROM
    products p
    JOIN orders o
    USING (product_id)
WHERE
    YEAR(order_date) = 2020
    AND MONTH(order_date) = 2
GROUP BY
    p.product_id,
    p.product_name
HAVING
    SUM(unit) >= 100;