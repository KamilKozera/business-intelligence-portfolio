-- Your team is working on archiving old data. In 2.sql,
-- write a SQL query to find the names of districts that are no longer operational.

-- Districts that are no longer operational have “(non-op)” at the end of their name.
-- Executing 2.sql results in a table with 1 column and 121 rows.

-- Explore data
-- SELECT "name" FROM "districts" LIMIT 5;

-- answer the question

SELECT "name" FROM "districts" WHERE "name" LIKE '%non-op%';
