SELECT
    email as Email
FROM
    Person
WHERE
    email is not null
GROUP BY
    email
HAVING
    count(*) >= 2;