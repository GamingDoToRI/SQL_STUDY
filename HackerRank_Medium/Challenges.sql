WITH counts AS (
    SELECT 
        h.hacker_id,
        h.name,
        COUNT(c.challenge_id) AS total_challenges
    FROM hackers h
    JOIN challenges c 
        ON h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id, h.name
),
ranked AS (
    SELECT 
        *,
        MAX(total_challenges) OVER () AS max_cnt,
        COUNT(*) OVER (PARTITION BY total_challenges) AS freq
    FROM counts
)
SELECT
    hacker_id,
    name,
    total_challenges
FROM
    ranked
WHERE
    total_challenges = max_cnt
    OR freq = 1
ORDER BY
    3 DESC,
    1;