-- A parent asks you for advice on finding the best public school districts in Massachusetts.
-- In 12.sql, write a SQL query to find public school districts with above-average per-pupil expenditures and an above-average percentage of teachers rated “exemplary”.
-- Your query should return the districts’ names, along with their per-pupil expenditures and percentage of teachers rated exemplary.
-- Sort the results first by the percentage of teachers rated exemplary (high to low), then by the per-pupil expenditure (high to low).

-- Executing 12.sql results in a table with 3 columns and 65 rows.

-- district names, above average per-pupil expenditures, above average percentage of teachers rated exemplary
/*
SELECT "name", AVG("per_pupil_expenditure"), AVG("exemplary") FROM "districts"
FULL JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
FULL JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "expenditures"."district_id"
WHERE "type" = 'Public School District'
GROUP BY "name"
HAVING AVG("per_pupil_expenditure") = (
        SELECT AVG("per_pupil_expenditure") FROM "expenditures"
        FULL JOIN "districts" ON "districts"."id" = "expenditures"."district_id"
        WHERE "type" = 'Public School District')
    AND
        AVG("exemplary") = (
        SELECT AVG("exemplary") FROM "staff_evaluations"
        FULL JOIN "districts" ON "districts"."id" = "staff_evaluations"."district_id"
        WHERE "type" = 'Public School District')
ORDER BY AVG("exemplary") DESC, AVG("per_pupil_expenditure") DESC;

-- SELECT AVG("exemplary") FROM "staff_evaluations"
        -- JOIN "districts" ON "districts"."id" = "staff_evaluations"."district_id"
        -- WHERE "type" = 'Public School District';*/

/*SELECT "name", AVG("per_pupil_expenditure"), AVG("exemplary") FROM "districts"
FULL JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
FULL JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "expenditures"."district_id"
WHERE "type" = 'Public School District'
GROUP BY "name"
HAVING AVG("exemplary") > 16.8137 AND AVG("per_pupil_expenditure") > 19617.192;*/


/*SELECT "name", AVG("per_pupil_expenditure"), AVG("exemplary") FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "expenditures"."district_id"
WHERE "type" = 'Public School District'
GROUP BY "name"
HAVING AVG("per_pupil_expenditure") >= (
        SELECT AVG("per_pupil_expenditure") FROM "expenditures")
    AND
        AVG("exemplary") >= (
        SELECT AVG("exemplary") FROM "staff_evaluations")
ORDER BY AVG("exemplary") DESC, AVG("per_pupil_expenditure") DESC;*/

/* SELECT "name", AVG("per_pupil_expenditure"), AVG("exemplary") FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "expenditures"."district_id"
WHERE "type" = 'Public School District'
GROUP BY "name"
HAVING AVG("per_pupil_expenditure") > 19528.99
    AND
        AVG("exemplary") > 16.93
ORDER BY AVG("exemplary") DESC, AVG("per_pupil_expenditure") DESC; */

SELECT "name", "per_pupil_expenditure", "exemplary" FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "expenditures"."district_id"
WHERE "type" = 'Public School District' AND ("per_pupil_expenditure" > 19528.99 AND "exemplary" > 16.93)
ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;
