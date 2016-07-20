-- # Denormal Automotives
-- ### DB Modeling Exercise in PostgreSQL
-- When connecting to your pg database, connect from this project directory.
-- To run sql statements from an external file, use the `\i [filepath]` command.
-- ## Denormal Cars
-- Write your queries in `denormal.sql` when instructed to.

-- 1. Create a new postgres user named `denormal_user`
DROP DATABASE IF EXISTS denormal_cars;

DROP user IF EXISTS denormal_user;

CREATE USER denormal_user;

CREATE DATABASE "denormal_cars" OWNER "denormal_user";
-- 1. Create a new database named `denormal_cars` owned by `denormal_user`

-- 1. Run the provided `scripts/denormal_data.sql` script on the `denormal_cars` database-

\connect denormal_cars;
\i scripts/denormal_data.sql

-- 1. Inspect the table named `car_models` by running `\dS` and look at the data using some `SELECT` statements
--SELECT * FROM carmodels;
-- 1. In `denormal.sql` Create a query to get a list of all `make_title` values in the `car_models` table, without any duplicate rows. (should have 71 results)

-- SELECT DISTINCT (make_title)
--   FROM car_models;

    --???????
    -- SELECT DISTINCT ON (make_title) make_title
    --   FROM car_models;

-- 1. In `denormal.sql` Create a query to list all `model_title` values where the `make_code` is `'VOLKS'`, without any duplicate rows (should have 27 results)

-- SELECT DISTINCT ON (model_title) model_title
--   FROM car_models
--   WHERE make_code LIKE 'VOLKS';

-- 1. In `denormal.sql` Create a query to list all `make_code`, `model_code`, `model_title`, and year from `car_models` where the `make_code` is `'LAM'` (should have 136 rows)

-- SELECT make_code, model_code, make_title
--   FROM car_models
--   WHERE make_code LIKE 'LAM';

-- 1. In `denormal.sql` Create a query to list all fields from all `car_models` in years between `2010` and `2015` (should have 7884 rows)

SELECT *
  FROM car_models
  WHERE year <= 2015
  AND year >= 2010;
