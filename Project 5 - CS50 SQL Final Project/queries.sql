-- Find all hutches

SELECT *
FROM "hutches";

-- Find all rabbits accomodated in a selected hutch

SELECT "breed", "gender", "months_old"
FROM "rabbits"
WHERE "id" IN (
    SELECT "rabbit_id"
    FROM "assigned"
    WHERE "hutch_id" = 1
);

-- Find all measurements of selected rabbit

SELECT *
FROM "measurements"
WHERE "rabbit_id" = (
    SELECT "id"
    FROM "rabbits"
    WHERE "id" = 1
);

-- Add a new hutch

INSERT INTO "hutches" ("type", "capacity", "width", "heigth", "depth")
VALUES ('indoors', 6, 250, 100, 150);

INSERT INTO "hutches" ("type", "capacity", "width", "heigth", "depth")
VALUES ('indoors', 6, 250, 100, 150);

INSERT INTO "hutches" ("type", "capacity", "width", "heigth", "depth")
VALUES ('outdoors', 6, 250, 100, 150);

INSERT INTO "hutches" ("type", "capacity", "width", "heigth", "depth")
VALUES ('outdoors', 2, 150, 100, 150);

INSERT INTO "hutches" ("type", "capacity", "width", "heigth", "depth")
VALUES ('indoors', 2, 150, 100, 150);

INSERT INTO "hutches" ("type", "capacity", "width", "heigth", "depth")
VALUES ('indoors', 2, 150, 100, 150);

INSERT INTO "hutches" ("type", "capacity", "width", "heigth", "depth")
VALUES ('indoors', 4, 200, 100, 150);

INSERT INTO "hutches" ("type", "capacity", "width", "heigth", "depth")
VALUES ('outdoors', 4, 200, 100, 150);

INSERT INTO "hutches" ("type", "capacity", "width", "heigth", "depth")
VALUES ('indoors', 4, 200, 100, 150);

INSERT INTO "hutches" ("type", "capacity", "width", "heigth", "depth")
VALUES ('indoors', 6, 250, 100, 150);

-- Add a new rabbit

INSERT INTO "rabbits" ("breed", "gender", "birth_date")
VALUES ('bgg', 'female', '2019-11-15');

INSERT INTO "rabbits" ("breed", "gender", "birth_date")
VALUES ('bgg', 'male', '2018-12-19');

INSERT INTO "rabbits" ("breed", "gender", "birth_date")
VALUES ('nzwr', 'female', '2021-08-05');

INSERT INTO "rabbits" ("breed", "gender", "birth_date")
VALUES ('bgg', 'male', '2022-02-02');

INSERT INTO "rabbits" ("breed", "gender", "birth_date")
VALUES ('bgg', 'female', '2023-10-27');

INSERT INTO "rabbits" ("breed", "gender", "birth_date")
VALUES ('nzwr', 'male', '2022-05-15');

INSERT INTO "rabbits" ("breed", "gender", "birth_date")
VALUES ('bgg', 'female', '2022-07-09');

-- Add a new measure

INSERT INTO "measures" ("rabbit_id", "weight", "ear_length", "ear_width")
VALUES (1, 1300, 15, 3);

-- Add a new assigned

INSERT INTO "assigned" ("hutch_id", "rabbit_id")
VALUES (7, 1);

INSERT INTO "assigned" ("hutch_id", "rabbit_id")
VALUES (7, 2);

INSERT INTO "assigned" ("hutch_id", "rabbit_id")
VALUES (7, 3);

INSERT INTO "assigned" ("hutch_id", "rabbit_id")
VALUES (7, 4);

INSERT INTO "assigned" ("hutch_id", "rabbit_id")
VALUES (7, 5);


-- Add a new comment

INSERT INTO "comments" ("rabbit_id", "comment")
VALUES (1, 'vet soon');
