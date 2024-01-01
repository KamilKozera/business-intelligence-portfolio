-- Store information about hutches.

CREATE TABLE "hutches" (
    "id" INTEGER,
    "type" TEXT NOT NULL CHECK("type" IN ("indoors", "outdoors")),
    "capacity" INTEGER NOT NULL CHECK("capacity" BETWEEN 1 AND 6),
    "width" NUMERIC NOT NULL,
    "heigth" NUMERIC NOT NULL,
    "depth" NUMERIC NOT NULL,
    PRIMARY KEY("id")
);

-- This table stores information about rabbit accommodations.

CREATE TABLE "assigned" (
    "hutch_id" INTEGER NOT NULL,
    "rabbit_id" INTEGER NOT NULL UNIQUE
);

-- The "rabbits" table contains data about rabbits.

CREATE TABLE "rabbits" (
    "id" INTEGER,
    "breed" TEXT NOT NULL CHECK("breed" IN ("bgg", "nzwr")),
    "gender" TEXT NOT NULL CHECK("gender" IN ("male", "female")),
    "birth_date" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "death_date" NUMERIC,
    "months_old" INTEGER,
    "image" BLOB,
    "active" INTEGER NOT NULL DEFAULT 1 CHECK("active" IN (0, 1)),
    PRIMARY KEY("id")
);

-- Track data about rabbit measures.

CREATE TABLE "measures" (
    "id" INTEGER,
    "rabbit_id" INTEGER NOT NULL,
    "date" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "weight" NUMERIC NOT NULL,
    "ear_length" NUMERIC NOT NULL,
    "ear_width" NUMERIC NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("rabbit_id") REFERENCES "rabbits"("id")
);

-- Represents comments left by users.

CREATE TABLE "comments" (
    "id" INTEGER,
    "rabbit_id" INTEGER NOT NULL,
    "comment" TEXT NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("rabbit_id") REFERENCES "rabbits"("id")
);

-- Checks if hutch has space for another rabbit and if it has, proceeds, if not, aborts requested insert into "assigned"

CREATE TRIGGER "check_capacity"
BEFORE INSERT ON "assigned"
FOR EACH ROW
BEGIN
    SELECT
        CASE
            WHEN (
                SELECT COUNT(*)
                FROM "assigned"
                WHERE "hutch_id" = NEW."hutch_id"
            ) < (
                SELECT "capacity"
                FROM "hutches"
                WHERE "id" = NEW."hutch_id"
            )
            THEN
                TRUE
            ELSE
                RAISE(ABORT, 'Hutch capacity Exceeded')
            END;
END;

-- Calculates "months_old" values on insert into "rabbits" table

CREATE TRIGGER "months_calc"
AFTER INSERT ON "rabbits"
FOR EACH ROW
BEGIN
    UPDATE "rabbits"
    SET "months_old" =
        CASE
            WHEN NEW."death_date" IS NULL THEN
                (strftime('%Y', 'NOW') - strftime('%Y', NEW."birth_date")) * 12 +
                (strftime('%m', 'NOW') - strftime('%m', NEW."birth_date"))
            ELSE
                (strftime('%Y', NEW."death_date") - strftime('%Y', NEW."birth_date")) * 12 +
                (strftime('%m', NEW."death_date") - strftime('%m', NEW."birth_date"))
        END
    WHERE "id" = NEW."id";
END;

-- After update of "active" on "rabbits", sets "death_date" to current date, "months_old" to rabbit final lifespan and deletes rabbit from "assigned" table

CREATE TRIGGER "non_active"
AFTER UPDATE OF "active" ON "rabbits"
FOR EACH ROW
BEGIN
    UPDATE "rabbits"
        SET "death_date" = CURRENT_TIMESTAMP,
            "months_old" = (strftime('%Y', 'NOW') - strftime('%Y', "birth_date")) * 12 +
                        (strftime('%m', 'NOW') - strftime('%m', "birth_date"))
    WHERE "id" = NEW."id";

    DELETE FROM "assigned"
    WHERE "rabbit_id" = NEW."id";
END;

-- Created index to speed reading from database up

CREATE INDEX "assigned_index" ON "assigned" ("hutch_id", "rabbit_id");
