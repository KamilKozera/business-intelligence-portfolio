-- Your colleague is preparing a map of all public schools in Massachusetts.
-- In 1.sql, write a SQL query to find the names and cities of all public schools in Massachusetts.

-- Keep in mind that not all schools in the schools table are considered traditional public schools.
-- Massachusetts also recognizes charter schools, which (according to DESE!) are considered distinct.
-- Executing 1.sql results in a table with 2 columns and 1,761 rows.

-- question:
-- names and cities of all public schools in Massachusetts

-- get to know the data

-- SELECT * FROM "schools" LIMIT 10;

-- answer the question

SELECT "name", "city" FROM "schools" WHERE "type" = 'Public School' AND "state" = 'MA';

