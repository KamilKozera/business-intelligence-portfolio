-- Some cities have more public schools than others. In 4.sql, write a SQL query to find the 10 cities with the most public schools.
-- Your query should return the names of the cities and the number of public schools within them,
-- ordered from greatest number of public schools to least. If two cities have the same number of public schools, order them alphabetically.

-- Executing 4.sql results in a table with 2 columns and 10 rows.

-- answer the question

SELECT "city", COUNT("type")
FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
ORDER BY COUNT("type") DESC, "city"
LIMIT 10;


