SELECT "name", AVG("per_pupil_expenditure"), AVG("exemplary") FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "expenditures"."district_id"
WHERE "type" = 'Public School District'
GROUP BY "name"
HAVING AVG("per_pupil_expenditure") > (
        SELECT AVG("per_pupil_expenditure") FROM "expenditures"
        JOIN "districts" ON "districts"."id" = "expenditures"."district_id"
        WHERE "type" = 'Public School District')
    AND
        AVG("exemplary") > (
        SELECT AVG("exemplary") FROM "staff_evaluations"
        JOIN "districts" ON "districts"."id" = "staff_evaluations"."district_id"
        WHERE "type" = 'Public School District')
ORDER BY AVG("exemplary") DESC, AVG("per_pupil_expenditure") DESC;
