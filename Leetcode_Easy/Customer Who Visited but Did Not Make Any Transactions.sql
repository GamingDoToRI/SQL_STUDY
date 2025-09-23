SELECT
    customer_id,
    COUNT(*) AS count_no_trans
FROM
    visits v
    LEFT JOIN transactions t
    USING (visit_id)
WHERE
    transaction_id IS NULL
GROUP BY
    customer_id;