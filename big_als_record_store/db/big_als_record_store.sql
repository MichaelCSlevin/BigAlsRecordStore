DROP TABLE IF EXISTS albums_by_artist;
DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE albums
(
  id SERIAL4 PRIMARY KEY,
  artist_id SERIAL4 REFERENCES artists(id),
  title VARCHAR(255),
  quantity INT,
  medium VARCHAR(255),
  genre VARCHAR(255)
);






-- INSERT INTO artists (name) VALUES ('ABC');
-- INSERT INTO artists (name) VALUES ('Beck');
-- INSERT INTO artists (name) VALUES ('KMFDM');
-- INSERT INTO artists (name) VALUES ('PRIMUS');
-- INSERT INTO artists (name) VALUES ('ZZ Top');
--
--
-- INSERT INTO albums (title, quantity, medium) VALUES ('The Lexicon of Love', 2, 'vinyl');
-- INSERT INTO albums (title, quantity, medium) VALUES ('Odelay', 5, 'CD');
-- INSERT INTO albums (title, quantity, medium) VALUES ('Hell Yeah', 1, 'vinyl');
-- INSERT INTO albums (title, quantity, medium) VALUES ('Frizzle Fry', 7, 'CD');
-- INSERT INTO albums (title, quantity, medium) VALUES ('Eliminator', 10, 'CD');
