/*Hits are great, but so are RBIs! In 12.sql, write a SQL query to find the players among the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001.

Your query should return a table with two columns, one for the players’ first names and one of their last names.
You can calculate a player’s salary per RBI by dividing their 2001 salary by their number of RBIs in 2001.
You may assume, for simplicity, that a player will only have one salary and one performance in 2001.
Order your results by player ID, least to greatest (or alphabetically by last name, as both are the same in this case!).
Keep in mind the lessons you’ve learned in 10.sql and 11.sql!

Executing 12.sql results in a table with 2 columns and 6 rows.*/

SELECT "first_name", "last_name" FROM (
SELECT "first_name", "last_name", "salary"/"H" AS 'dollars per hit' FROM "performances"
JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id" AND "salaries"."year" = "performances"."year"
JOIN "players" ON "salaries"."player_id" = "players"."id"
WHERE "performances"."year" = 2001 AND "H" <> 0
ORDER BY "dollars per hit", "last_name"
LIMIT 10)
INTERSECT
SELECT "first_name", "last_name" FROM (
SELECT "first_name", "last_name", "salary"/"RBI" AS 'dollars per RBI' FROM "performances"
JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id" AND "salaries"."year" = "performances"."year"
JOIN "players" ON "salaries"."player_id" = "players"."id"
WHERE "performances"."year" = 2001 AND "RBI" <> 0
ORDER BY "dollars per RBI", "last_name"
LIMIT 10)
ORDER BY "last_name";
