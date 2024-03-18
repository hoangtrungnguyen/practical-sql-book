CREATE TABLE char_data_types
(
    varchar_column varchar(10),
    char_column    char(10),
    text_column    text
);

INSERT INTO char_data_types
VALUES ('abc', 'abc', 'abc'),
       ('delight', 'delight', 'delight');

COPY char_data_types TO 'C:\Users\nguye\Downloads\typetest.txt'
    WITH (FORMAT CSV, HEADER , DELIMITER '|');

---
-- ### Using Fixed and Floating-Point Types
---

CREATE TABLE number_data_types
(
    numeric_column numeric(20, 5),
    real_column    real,
    double_column  double precision
);

INSERT INTO number_data_types
VALUES (0.7, 0.7, 0.7),
       (2.13579, 2.13579, 2.13579),
       (2.1257987654, 2.1257987654, 2.1257987654);

SELECT *
FROM number_data_types;

---- END ----

-----
-- Date time data type
-----

CREATE TABLE date_time_types
(
    timestamp_column timestamp with time zone,
    interval_column  interval
);

INSERT INTO date_time_types
VALUES ('2018-12-31 01:00 EST', '2 days'),
       ('2018-12-31 01:00 -8', '1 month'),
       ('2018-12-31 01:00 Australia/Melbourne', '1 century'),
       (now(), '1 week');

SELECT timestamp_column,
       interval_column,
       timestamp_column - interval_column AS new_date
FROM date_time_types;


-- Transforming value
SELECT date_time_types.timestamp_column,
       CAST(timestamp_column as varchar(10))
FROM date_time_types;

SELECT number_data_types.numeric_column,
       CAST(numeric_column as integer),
       CAST(numeric_column as varchar(6))
FROM number_data_types;

SELECT number_data_types.numeric_column::varchar(10)
FROM number_data_types;
---- END ----