SELECT
    CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS formatted_name
FROM
    OCCUPATIONS
ORDER BY
    1;

SELECT
    CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.')
FROM
    OCCUPATIONS
GROUP BY
    Occupation
ORDER BY
    COUNT(*),
    Occupation;