/*It’s a bit of a slow day in the office. Though Satchel no longer plays,
in 5.sql, write a SQL query to find all teams that Satchel Paige played for.

Your query should return a table with a single column, one for the name of the teams.

Executing 5.sql results in a table with 1 column and 3 rows.*/

SELECT "name" FROM "teams" WHERE "id" IN (
    SELECT "team_id" FROM "performances" WHERE "player_id" = (
        SELECT "id" FROM "players" WHERE "first_name" = 'Satchel' AND "last_name" = 'Paige'
    )
);
