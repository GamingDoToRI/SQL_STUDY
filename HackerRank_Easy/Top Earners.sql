SELECT
    salary * months,
    COUNT(*)
FROM
    employee
GROUP BY
    salary * months
ORDER BY
    salary * months DESC
LIMIT
    1;

-- SELECT 
--     MAX(salary * months) AS 'max total earning',
--     COUNT(*)
-- FROM 
--     mployee
-- WHERE
--     salary * months = (
--         SELECT MAX(salary * months)
--         FROM employee
--         );