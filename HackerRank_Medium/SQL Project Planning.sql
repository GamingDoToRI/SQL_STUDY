SELECT
    s.Start_Date,
    e.End_Date
FROM (
    SELECT Start_Date,
           ROW_NUMBER() OVER (ORDER BY Start_Date) AS rn
    FROM Projects
    WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)
) AS s
JOIN (
    SELECT End_Date,
           ROW_NUMBER() OVER (ORDER BY End_Date) AS rn
    FROM Projects
    WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)
) AS e
USING (rn)
ORDER BY
    DATEDIFF(e.End_Date, s.Start_Date),
    s.Start_Date;