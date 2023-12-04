
-- *** The Lost Letter ***

-- name: Anneke
-- lives at: 900 Somerville Avenue
-- friend named: Varsha
-- lives at: 2 Finnegan Street, uptown
-- contents: congratulatory note

-- quesions:
-- 1. At what type of address did the Lost Letter end up?:
-- 2. At what address did the Lost Letter end up?:

-- 1.
-- Firsly, I need to find out the 'id' of address from which the package was sent

SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue';

-- Then, from "packages" table I can deduct to whom packages were sent from the starting point

SELECT * FROM "packages" WHERE "from_address_id" = '432';

-- Let's check address "id" 854 because the content od this package is "Congratulatory letter"

SELECT * FROM "addresses" WHERE "id" = 854;

-- It seems that the lady misspelled and sent out the letter to "2 Finnigan Street"
-- Let's grab package id and locate where the package ended up being delivered

SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" = 432 AND "to_address_id" = 854
);

-- the package was dropped at 2 Finnigan Street which is residential type

-- *** The Devious Delivery ***

-- town: Fiftyville
-- no “From” address

-- questions:
-- 1. At what type of address did the Devious Delivery end up?:
-- 2. What were the contents of the Devious Delivery?:

-- one can expect a null value when it comes to "from_address_id", so let's start with that

SELECT * FROM "packages" WHERE "from_address_id" IS NULL;

-- great, there is only one NULL value and we answered contents of a package - "Duck debugger"
-- now, let's get down to business and find type of address the Devious Delivery ended up

SELECT * FROM "scans" WHERE "package_id" = 5098;

-- the package was dropped off at "address_id" 348

SELECT "type" FROM "addresses" WHERE "id" = 348;

-- *** The Forgotten Gift ***

-- sent from: 109 Tileston Street
-- sent to: 728 Maple Place

-- questions:
-- 1. What are the contents of the Forgotten Gift?:
-- 2. Who has the Forgotten Gift?:

-- I can easily check what's inside the box

SELECT "contents" FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" =  '109 Tileston Street'
) AND "to_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" =  '728 Maple Place'
);

-- Now, let's check which driver has grandpa's package

SELECT "name" FROM "drivers" WHERE "id" IN (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" =  '109 Tileston Street'
        ) AND "to_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" =  '728 Maple Place'
        )
    )
);

-- I found 2 drivers that handled this particular package, I need to take a step back

SELECT "driver_id", "action", "timestamp" FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" =  '109 Tileston Street'
    ) AND "to_address_id" = (
         SELECT "id" FROM "addresses" WHERE "address" =  '728 Maple Place'
    )
);

-- driver with "driver_id" 17 picked up package on 23th after it was dropped off
-- let's check who it was

SELECT "name" FROM "drivers" WHERE "id" = 17;



