SELECT
    IFNULL(unique_id, null) AS unique_id,
    name
FROM
    employees e
    LEFT JOIN employeeuni u
    USING (id);