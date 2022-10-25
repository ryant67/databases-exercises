USE codeup_test_db;

SELECT 'Albums released after 1991:' AS 'Output Caption';
SELECT record_name, release_year FROM albums WHERE release_year > 1991;
DELETE FROM albums WHERE release_year > 1991;

SELECT 'Albums with the Genre of Disco:' AS 'Output Caption';
SELECT record_name, record_genre From albums WHERE record_genre = 'Disco';
DELETE FROM albums WHERE record_genre = 'Disco';

SELECT 'Album by Whitney Houston' AS 'Output Caption';
SELECT record_name FROM albums WHERE artist_name = 'Whitney Houston';
DELETE FROM albums WHERE artist_name = 'Whitney Houston';

SELECT * FROM albums;