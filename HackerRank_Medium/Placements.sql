SELECT
    s.Name
FROM
    Students AS s
    JOIN Friends AS f ON f.ID = s.ID
    JOIN Packages AS ps ON ps.ID = s.ID
    JOIN Packages AS pf ON pf.ID = f.Friend_ID
WHERE
    pf.Salary > ps.Salary
ORDER BY
    pf.Salary;