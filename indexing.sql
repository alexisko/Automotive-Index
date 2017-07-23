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

CREATE INDEX q1 ON car_models (model_code);

CREATE INDEX q2 ON car_models (make_code);

CREATE INDEX q3 ON car_models (year);

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
-- Time: 1.667 ms

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'GT-R';
-- Time: 0.412 ms

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
-- Time: 2.308 ms

SELECT * FROM car_models WHERE year >= 2010 AND year <= 2015;
-- Time: 97.758 ms

SELECT * FROM car_models WHERE year = 2010;
-- Time: 17.918 ms