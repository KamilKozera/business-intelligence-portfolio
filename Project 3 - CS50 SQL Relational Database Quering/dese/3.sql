-- The Massachusetts Legislature would like to learn how much money, on average, districts spent per-pupil last year.
-- In 3.sql, write a SQL query to find the average per-pupil expenditure. Name the column “Average District Per-Pupil Expenditure”.

-- Note the per_pupil_expenditure column in the expenditures table contains the average amount, per pupil, each district spent last year.
-- You’ve been asked to find the average of this set of averages, weighting all districts equally regardless of their size.
-- Executing 3.sql results in a table with 1 column and 1 row.

-- Explore data
-- SELECT * FROM "expenditures" LIMIT 5;

-- answer the question
SELECT AVG("per_pupil_expenditure") AS 'Average District Per-Pupil Expenditure' FROM "expenditures";
