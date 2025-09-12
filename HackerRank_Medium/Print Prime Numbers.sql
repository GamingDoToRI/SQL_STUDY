WITH RECURSIVE numbers AS (
    SELECT 2 AS n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 1000
)
SELECT
    GROUP_CONCAT(n SEPARATOR '&') AS primes
FROM
    numbers a
    WHERE NOT EXISTS (
        SELECT 1
        FROM numbers b
        WHERE b.n <= SQRT(a.n) AND b.n > 1 AND a.n % b.n = 0
    );