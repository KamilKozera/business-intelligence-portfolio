-- Another parent wants to send their child to a district with few other students.
-- In 9.sql, write a SQL query to find the name (or names) of the school district(s) with the single least number of pupils. Report only the name(s).

-- Executing 9.sql results in a table with 1 column and 1 row.

-- answer the question
SELECT "name" FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
ORDER BY "pupils"
LIMIT 1;
