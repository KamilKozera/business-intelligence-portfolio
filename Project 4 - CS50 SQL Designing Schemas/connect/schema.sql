CREATE TABLE "users" (
    "user_id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
    PRIMARY KEY("user_id")
);

CREATE TABLE "users_connections" (
    "user_connection_id" INTEGER,
    "user_a" INTEGER,
    "user_b" INTEGER,
    "connected_from" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("user_connection_id"),
    FOREIGN KEY("user_a") REFERENCES "users"("user_id"),
    FOREIGN KEY("user_a") REFERENCES "users"("user_id")
);

CREATE TABLE "schools" (
    "school_id" INTEGER,
    "school_type" TEXT NOT NULL,
    "school_location" TEXT NOT NULL,
    "establishment_year" INTEGER NOT NULL CHECK("establishment_year" > 0),
    PRIMARY KEY("school_id")
);

CREATE TABLE "schools_connections" (
    "school_connection_id" INTEGER,
    "user_id" INTEGER,
    "start_date" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "end_date" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    "degree_type" TEXT NOT NULL,
    PRIMARY KEY("school_connection_id"),
    FOREIGN KEY("user_id") REFERENCES "users"("user_id")
);

CREATE TABLE "companies" (
    "company_id" INTEGER,
    "company_name" TEXT NOT NULL,
    "company_industry" TEXT NOT NULL,
    "company_location" TEXT NOT NULL,
    PRIMARY KEY("company_id")
);

CREATE TABLE "companies_connections" (
    "company_connection_id" INTEGER,
    "user_id" INTEGER,
    "start_date" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "end_date" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    "job_title" TEXT NOT NULL,
    PRIMARY KEY("company_connection_id"),
    FOREIGN KEY("user_id") REFERENCES "users"("user_id")
);
