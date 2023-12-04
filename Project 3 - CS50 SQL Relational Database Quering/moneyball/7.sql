/*You need to make a recommendation about which player (or players) to avoid recruiting.
In 7.sql, write a SQL query to find the name of the player who’s been paid the highest salary, of all time, in Major League Baseball.

Your query should return a table with two columns, one for the player’s first name and one for their last name.

Executing 7.sql results in a table with 2 columns and 1 row.*/

SELECT "first_name", "last_name" FROM "players" WHERE "id" IN (
    SELECT "player_id" FROM "salaries" WHERE "salary" IN (
        SELECT MAX("salary") FROM "salaries"
    )
);
