SELECT
    product_name,
    year,
    price
FROM
    sales s
    JOIN product p
    USING (product_id);