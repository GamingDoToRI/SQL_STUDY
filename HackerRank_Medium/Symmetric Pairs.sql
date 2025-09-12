SELECT
    f1.X,
    f1.Y
FROM
    functions f1
    JOIN functions f2
    ON f1.X = f2.Y AND f1.Y = f2.X
WHERE
    f1.X < f1.Y
   OR (f1.X = f1.Y AND (SELECT COUNT(*) 
                        FROM functions f3 
                        WHERE f3.X = f1.X AND f3.Y = f1.Y) > 1)
GROUP BY
    f1.X,
    f1.Y
ORDER BY
    f1.X;