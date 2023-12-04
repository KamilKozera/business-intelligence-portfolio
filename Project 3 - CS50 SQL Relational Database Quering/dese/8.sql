-- A parent wants to send their child to a district with many other students.
-- In 8.sql, write a SQL query to display the names of all school districts and the number of pupils enrolled in each.
-- Executing 8.sql results in a table with 2 columns and 396 rows.


-- answer the question

SELECT "name", "pupils" FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id";

