SELECT
    name,
    SUM(amount) AS balance
FROM
    users u
    JOIN transactions t
    USING (account)
GROUP BY
    t.account
HAVING
    SUM(amount) > 10000;