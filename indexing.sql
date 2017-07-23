SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
-- Time: 33.217 ms

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'GT-R';
-- Time: 29.200 ms

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
SELECT COUNT(*) FROM car_models WHERE make_code = 'LAM';
-- Time: 30.382 ms

SELECT * FROM car_models WHERE year >= 2010 AND year <= 2015;
SELECT COUNT(*) FROM car_models WHERE year >= 2010 AND year <= 2015;
-- Time: 112.682 ms

SELECT * FROM car_models WHERE year = 2010;
SELECT COUNT(*) FROM car_models WHERE year = 2010;
-- Time: 51.364 ms

CREATE INDEX q1 ON car_models (make_title) WHERE make_code = 'LAM';
-- Time: 238.028 ms

CREATE INDEX q2 ON car_models (make_title) WHERE make_code = 'GT-R';
-- Time: 49.406 ms

CREATE INDEX q3 ON car_models (make_code, model_code, model_title, year) WHERE make_code = 'LAM';
-- Time: 53.185 ms

CREATE INDEX q4 ON car_models (id, make_code, make_title, model_code, model_title, year) WHERE year >= 2010 AND year <= 2015;
-- Time: 114.301 ms

CREATE INDEX q5 ON car_models (id, make_code, make_title, model_code, model_title, year) WHERE year = 2010;
-- Time: 65.626 ms
