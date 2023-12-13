CREATE TABLE "all_ingredients" (
    "ingredient_id" INTEGER,
    "ingredient_name" TEXT NOT NULL,
    "ingredient_price" NUMERIC NOT NULL CHECK("ingredient_price" > 0),
    PRIMARY KEY("ingredient_id")
);

CREATE TABLE "recipe_ingredients" (
    "recipe_id" INTEGER NOT NULL CHECK("recipe_id" > 0),
    "ingredient_id" INTEGER NOT NULL,
    "donut_id" INTEGER NOT NULL,
    FOREIGN KEY("ingredient_id") REFERENCES "all_ingredients"("ingredient_id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("donut_id")
);

CREATE TABLE "donuts" (
    "donut_id" INTEGER,
    "donut_name" TEXT NOT NULL,
    "donut_type" TEXT NOT NULL,
    "donut_price" NUMERIC NOT NULL CHECK("donut_price" > 0),
    PRIMARY KEY("donut_id")
);

CREATE TABLE "orders" (
    "order_id" INTEGER,
    "donut_id" INTEGER,
    "customer_id" INTEGER,
    FOREIGN KEY("donut_id") REFERENCES "donuts"("donut_id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("customer_id")
);

CREATE TABLE "customers" (
    "customer_id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY("customer_id")
);

