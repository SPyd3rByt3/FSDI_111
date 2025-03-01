-- SQL statements
-- in general there are two varieties of SQL statements
-- 1. Commands (affect any change in the DB (CUD ))
-- 2. Queries (Retrieven data for reading purposes)

-- MongoDB supports unstructured data

CREATE TABLE IF NOT EXISTS user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT,
    is_online BOOLEAN DEFAULT 0
);

-- dont forget the semi-colon! it waits for it to begin processing the request

-- dummy data:

-- CRUD(S)
-- CREATE
-- READ
-- UPDATE
-- DELETE
-- SCAN

-- SELECT
-- CREATE
INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES
(
    "Rafael",
    "GPL",
    "DIY stuff"
),
(
    "Bob",
    "Martin",
    "Writing books"
),
(
    "John",
    "Doe",
    "Playing golf and watching TV"
);

-- READ
SELECT * FROM user WHERE id=1;
-- SELECT last_name, first_name FROM user WHERE id=1;

-- SCAN
SELECT * FROM user;
-- SELECT * FROM user WHERE id > 7; 

-- UPDATE
UPDATE user SET
    first_name="Seth",
    last_name="Patterson",
    hobbies="Watching movies and listening to music"
WHERE id=1;

-- DELETE
DELETE FROM user WHERE id = 1;