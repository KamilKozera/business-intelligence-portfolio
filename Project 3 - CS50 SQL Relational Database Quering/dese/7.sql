-- DESE is preparing a report on schools in the Cambridge school district.
-- In 7.sql, write a SQL query to find the names of all schools in the Cambridge school district.

-- Executing 7.sql results in a table with 1 column and 17 rows.

-- answer the question

SELECT "name" FROM "schools" WHERE "city" = 'Cambridge' AND "type" = 'Public School';

