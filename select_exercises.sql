USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd:' AS 'Output Caption';
SELECT record_name FROM albums WHERE artist_name = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released:' AS 'Output Caption';
SELECT release_year FROM albums WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'All albums that were released in the 1990s:' AS 'Output Caption';
SELECT release_year FROM albums WHERE release_year BETWEEN 1990 AND 1999;

SELECT 'All albums that sold less than 20 Million Certified Sales:' AS 'Output Caption';
SELECT record_name FROM albums WHERE record_sales <= 20;

SELECT 'All albums with a genre of ''Rock'':' AS 'Output Caption';
SELECT record_name FROM albums WHERE record_genre = 'Rock';