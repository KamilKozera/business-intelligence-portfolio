-- first_name, last_name, salary each year, home runs each year, year
-- 5 columns, 14.915 rows
-- ORDER BY player_id ASC, year by player DESC,
-- corner case: a player has multiple salaries or performances for a given year. Order them first by number of home runs, in descending order, followed by salary, in descending order.

SELECT
    p.first_name,
    p.last_name,
    s.salary,
    pr.year,
    pr.HR
FROM players p
JOIN performances pr ON p.id = pr.player_id
JOIN salaries s ON p.id = s.player_id AND pr.year = s.year
ORDER BY
    p.id ASC,
    pr.year DESC,
    pr.HR DESC,
    s.salary DESC;

