-- Add more artists to expand the data that we can use
INSERT INTO artists (name) VALUES ("Taylor Swift");
INSERT INTO artists (name) VALUES ("Lady Gaga");
INSERT INTO artists (name) VALUES ("Justin Bieber");
INSERT INTO artists (name) VALUES ("Ariana Grande");
INSERT INTO artists (name) VALUES ("Bruno Mars");

-- Taylor Swift
	-- Albums
	INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Fearless", "2008-11-11", 3);
	INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Red", "2012-10-22", 3);
	-- Songs
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Fearless", 246, "Pop rock", 3);
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Love Story", 213, "Country", 3);
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("State of Grace", 243, "Rock, Alternative rock, Arena rock", 4);
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Red", 204, "Country", 4);

-- Lady Gaga
	-- Albums
	INSERT INTO albums (album_title, date_released, artist_id) VALUES ("A Star is Born", "2018-10-10", 4);
	INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Born This Way", "2011-6-29", 4);

	-- Songs
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Black Eyes", 151, "Rock and Roll", 5);
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Shallow", 201, "Country, Rock, Folk rock", 5);
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Born This Way", 252, "Electropop", 6);

	-- UPDATE songs SET length = 151 WHERE id = 9;

-- Justin Bieber
	-- Albums
	INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Purpose", "2015-11-13", 5);
	INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Believe", "2012-6-15", 5);

	-- Songs
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Sorry", 132, "Dancehall-poptrophical housemoombahton", 7);
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Boyfriend", 251, "Pop", 8);

-- Ariana Grande
	-- Albums
	INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Dangerous Woman", "2016-5-20", 6);
	INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Thank U, Next", "2019-2-8", 6);

	-- Songs
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Into You", 242,"EDM House", 9);
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Thank U Next", 156,"Pop, R&B", 10);

-- Bruno Mars
	-- Albums
	INSERT INTO albums (album_title, date_released, artist_id) VALUES ("24K Magic", "2016-11-18", 7);
	INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Earth to Mars", "2011-01-28", 7);

	-- Songs
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("24K Magic", 207, "Funk, Disco, R&B", 11);
	INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Lost", 152, "Pop", 12);

-- Exclude a record(s)
	-- Syntax: SELECT column_name FROM table_name WHERE column_name != value;

	SELECT * FROM songs WHERE id != 11;
	SELECT * FROM songs WHERE album_id != 5 AND album_id != 6;

-- Finding records using comparison operators

	SELECT * FROM songs WHERE length > 230 OR length < 200;

-- Getting records with specific condition
	
	-- IN Clause
		-- Best used for querying multiple values in a single column.
		-- SELECT * FROM songs WHERE id = 1 OR id = 3 OR id = 5;
		SELECT * FROM songs WHERE id IN (1, 3, 5);
		SELECT * FROM songs WHERE genre IN ("Pop", "K-pop");

-- Show records with partial match.
	-- LIKE clause 

	-- % wildcard
	-- Represents zero or multiple characters

	-- Find values with a match at start
	SELECT * FROM songs WHERE song_name LIKE "th%";

	-- Find values with a match at the end.
	SELECT * FROM songs WHERE song_name LIKE "%ce";

	-- Find values with a match at any position.
	SELECT * FROM songs WHERE song_name LIKE "%or%";

	-- (_) wildcard
	-- Represents a single character.

	-- Find values with a match of a specific length/pattern.
	SELECT * FROM songs WHERE song_name LIKE "__rr_";

	-- Find values with a match at certain positions.
	SELECT * FROM albums WHERE album_title LIKE "_ur%";

	-- Find values with a match at any position
	SELECT * FROM albums WHERE album_title LIKE "%_r%";

-- Sorting Records
	-- SYNTAX: SELECT column_name FROM table_name ORDER BY column_name ORDER;

	SELECT * FROM songs ORDER BY song_name;
	SELECT * FROM songs ORDER BY song_name ASC;
	SELECT * FROM songs ORDER BY song_name DESC;

-- Limit Records
	-- SYNTAX: SELECT * FROM table_name LIMIT num_of_records;
	SELECT * FROM songs LIMIT 5;


-- Show records with distinct values.
	-- SYNTAX: SELECT DISTINCT column_name FROM table_name;

	SELECT genre FROM songs;
	SELECT DISTINCT genre FROM songs;

-- Joining Two Tables
	-- Syntax:
		SELECT column_name FROM table1
			JOIN table2 ON table1.id = table2.foreign_key_col;

		SELECT * FROM artists
			JOIN albums ON artists.id = albums.artist_id;

-- Joining Multiple Tables
	-- SYNTAX:
		SELECT column_name FROM table1
			JOIN table2 ON table1.id = table2.foreign_key_col
			JOIN table3 ON table2.id = table3.foreign_key_col;

		SELECT * FROM artists
			JOIN albums ON artists.id = albums.artist_id
			JOIN songs ON albums.id = songs.album_id;

-- Select column to display
	SELECT name, album_title, date_released, song_name, length, genre FROM artists
		JOIN albums ON artists.id = albums.artist_id
		JOIN songs ON albums.id = songs.album_id;

-- Provide aliases for joining table
	-- SYNTAX:
		SELECT column_name AS alias FROM table1
			JOIN table2 ON table1.id = table2.foreign_key_col
			JOIN table3 ON table2.id = table3.foreign_key_col;

		SELECT name AS artists, album_title AS album, date_released, song_name AS song, length, genre FROM artists
		JOIN albums ON artists.id = albums.artist_id
		JOIN songs ON albums.id = songs.album_id;

-- Create a record for user, playlist and playist_songs table
	
	-- User table
		INSERT INTO users (username, password, full_name, contact_number, email, address) VALUES ("john", "john123", "John Doe", 09123456789, "john@mail.com", "New York City, USA");

	-- Playlist table
		INSERT INTO playlists (user_id, datatime_created) VALUES (1, "2023-03-08 02:23:00");

	-- Playlists_songs Table
		INSERT INTO playlists_songs (playlist_id, song_id) VALUES (1, 1), (1, 10), (1, 17);

	-- Multiple Joins (playlists, playlists_songs, and songs tables)
	SELECT * FROM playlists
		JOIN playlists_songs ON playlists.id = playlists_songs.playlist_id
		JOIN songs ON playlists_songs.song_id = songs.id;

	-- Select specific column
	SELECT user_id, datetime_created, song_name, length, genre FROM playlists
		JOIN playlists_songs ON playlists.id = playlists_songs.playlist_id
		JOIN songs ON playlists_songs.song_id = songs.id;

	-- Joining multiple columns to complete all the related data:
	SELECT full_name, datetime_created, song_name, length, genre, album_title FROM playlists
		JOIN users ON playlists.user_id = users.id
		JOIN playlists_songs ON playlists.id = playlists_songs.playlist_id
		JOIN songs ON playlists_songs.song_id = songs.id
		JOIN albums ON songs.album_id = albums.id;