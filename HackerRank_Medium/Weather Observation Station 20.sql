SELECT 
    ROUND(AVG(lat_n), 4)
FROM (
    SELECT lat_n,
           ROW_NUMBER() OVER (ORDER BY lat_n) AS rn,
           COUNT(*) OVER () AS cnt
    FROM station
    ) t
WHERE
    rn IN ((cnt + 1) / 2, (cnt + 2) / 2);