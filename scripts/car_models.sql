-- db indexed_cars

CREATE TABLE IF NOT EXISTS car_models
(
 id serial,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY (id)
);

CREATE INDEX q1 ON car_models (model_code);

CREATE INDEX q2 ON car_models (make_code);

CREATE INDEX q3 ON car_models (year);

-- SELECT TIMES AFTER
-- 1. Time: 1.466 ms VS. Time: 1.667 ms (PREV)
-- 2. Time: 0.657 ms VS. Time: 0.412 ms (PREV)
-- 3. Time: 2.122 ms VS. Time: 2.308 ms (PREV)
-- 4. Time: 82.677 ms VS. Time: 97.758 ms (PREV)
-- 5. Time: 16.614 ms VS. Time: 17.918 ms (PREV)