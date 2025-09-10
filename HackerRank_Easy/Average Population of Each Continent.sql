SELECT
    continent,
    FLOOR(AVG(c.population))
FROM
    city c
    JOIN country co
    ON c.countrycode = co.code
GROUP BY
    continent;