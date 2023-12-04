-- DESE wants to assess which schools achieved a 100% graduation rate.
-- In 6.sql, write a SQL query to find the names of schools (public or charter!) that reported a 100% graduation rate.

-- Executing 6.sql results in a table with 1 column and 9 rows.

-- Explore the data
-- SELECT * FROM "graduation_rates" LIMIT 5;

-- check how many types of schools are there
-- SELECT "type", COUNT("type") FROM "schools" GROUP BY "type";

-- looking for names with 100% graduation rate

SELECT "name" FROM "schools"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
WHERE "graduated" = 100;


