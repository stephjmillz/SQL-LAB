SELECT p.first_name, h.address, p.birthday FROM people p
INNER JOIN homes h on (p.home_id = h.id)
WHERE p.birthday IS NOT NULL ORDER BY p.MONTH(birthday);
SELECT * FROM people p INNER JOIN homes h on (p.home_id = h.id)
WHERE p.birthday IS NOT NULL ORDER BY p.MONTH(birthday);

SELECT * FROM movies WHERE genre = 'Sci-Fi';
SELECT * FROM movies WHERE imdb_score >= 6.5;
SELECT * FROM movies WHERE rating IN ('G', 'PG') AND runtime < 100;
SELECT AVG(runtime) avg_runtime, genre FROM movies WHERE imdb_score < 7.5 GROUP BY genre;
UPDATE movies SET rating = 'R' WHERE title = 'Starship Troopers';
SELECT id, rating FROM movies WHERE genre IN ('Documentary','Horror');
SELECT AVG(imdb_score), MAX(imdb_score), MIN(imdb_score), rating FROM movies GROUP BY rating;
SELECT AVG(imdb_score), MAX(imdb_score), MIN(imdb_score), rating FROM movies GROUP BY rating HAVING COUNT(*) > 1;
DELETE FROM movies WHERE rating = 'R';

INSERT INTO movies (title, runtime, genre, imdb_score, rating)
VALUES ('Howard the Duck', '110', 'Sci-Fi', '4.6', 'PG');
INSERT INTO movies (title, runtime, genre, imdb_score, rating)
VALUES ('Lavalantula', '83', 'Horror', '4.7', 'TV-14');
INSERT INTO movies (title, runtime, genre, imdb_score, rating)
VALUES ('Starship Troopers', '129', 'Sci-Fi', '7.2', 'PG-13');
INSERT INTO movies (title, runtime, genre, imdb_score, rating)
VALUES ('Waltz With Bashir', '90', 'Documentary', '8.0', 'R');