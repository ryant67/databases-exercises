USE codeup_test_db;

SELECT 'All Albums:' AS 'Output Caption';
SELECT * FROM albums;
UPDATE albums SET record_sales = (record_sales * 10);
SELECT * FROM albums;

SELECT 'All albums released before 1980:' AS 'Output Caption';
SELECT record_name, release_year FROM albums WHERE release_year < 1980;
UPDATE albums SET release_year = 1800 WHERE release_year < 1980;
SELECT record_name, release_year FROM albums WHERE release_year < 1980;

SELECT 'All albums by Michael Jackson:' AS 'Output Caption';
SELECT artist_name, record_name FROM albums WHERE artist_name = 'Michael Jackson';
UPDATE albums SET artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';
SELECT artist_name, record_name FROM albums WHERE artist_name = 'Peter Jackson';