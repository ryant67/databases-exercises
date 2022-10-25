USE codeup_test_db;

SELECT record_name FROM albums WHERE artist_name = 'Pink Floyd';

SELECT release_year FROM albums WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT release_year FROM albums WHERE release_year >= 1990;

SELECT record_name FROM albums WHERE record_sales <= 20;

SELECT record_name FROM albums WHERE record_genre = 'Rock';