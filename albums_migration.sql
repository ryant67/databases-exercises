USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(200),
    record_name VARCHAR(200),
    release_date DATE,
    record_sales FLOAT,
    record_genre CHAR(50),
    PRIMARY KEY (id)
);