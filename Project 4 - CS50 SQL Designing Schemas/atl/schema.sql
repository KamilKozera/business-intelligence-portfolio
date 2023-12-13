CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL CHECK("age" > 0),
    PRIMARY KEY("id")
);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "airline_name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK("concourse" IN ("A", "B", "C", "D", "E", "F", "T")),
    PRIMARY KEY("id")
);

CREATE TABLE "flights" (
    "flight_id" INTEGER NOT NULL CHECK("flight_id" > 0),
    "airline" TEXT,
    "departure_code" TEXT NOT NULL,
    "arrival_code" TEXT NOT NULL,
    "departure_timedate" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "arrival_timedate" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY("airline") REFERENCES "airlines"("airline_name")
);


CREATE TABLE "check_in" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "airline" TEXT,
    "flight_id" INTEGER,
    "check_in_timedate" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("id"),
    FOREIGN KEY ("first_name", "last_name") REFERENCES "passengers"("first_name", "last_name"),
    FOREIGN KEY ("airline", "flight_id") REFERENCES "flights"("airline", "flight_id")
);



