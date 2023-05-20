-- Run the MySQL/Maria DB in Terminal
mysql -u root -p

-- Show/retrieve all the databases:
SHOW DATABASES;

-- Create/add a database:
-- Syntax: CREATE DATABASE database_name;
CREATE DATABASE music_store;

-- Delete/Drop a database;
-- Syntax: DROP DATABASE database_name;
DROP DATABASE music_store;

-- Select/Use a database;
-- Syntax: USE database_name
USE music_store;

-- Create/Add a tables.
-- Syntax: CREATE TABLE table_name(column1, column2, PRIMARY KEY (id));
CREATE TABLE singers(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);

-- Showing/retrieving tables.
SHOW TABLES;

-- Delete/Drop a table
-- DROP TABLE table_name
DROP TABLE singers;

-- Create "artists" table
CREATE TABLE artists(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);

-- Describing/Showing the information about the tables
-- SYNTAX: DESCRIBE table_name;
DESCRIBE artists;

-- Create "records" table

-- Table With Foreign Key

/*

	CONSTRAINT foreign_key_name
		FOREIGN KEY(column_name)
		REFERENCES table_name(id)
		ON UPDATE ACTION (NO ACTION, CASCADE, SET NULL, SET DEFAULT)
		ON DELETE ACTION (RESTRICT, SET NULL)
*/

CREATE TABLE records(
id INT NOT NULL AUTO_INCREMENT,
album_title VARCHAR(25) NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY(id),
CONSTRAINT fk_albums_artist_id
	FOREIGN KEY(artist_id) REFERENCES artists(id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
);

-- Rename the tables
-- Syntax: ALTER TABLE table_name RENAME TO new_table_name;
ALTER TABLE records RENAME TO albums;

-- Add a column to a table
-- SYNTAX: ALTER TABLE table_name ADD column_name data_type extra options
ALTER TABLE albums ADD date_released DATE NOT NULL;

-- Drop/delete a specific column
-- Syntax: ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE albums DROP COLUMN date_released;

-- Add a column to a specific position
-- SYNTAX: ALTER TABLE table_name ADD column_name AFTER column_name;
ALTER TABLE albums ADD year DATE NOT NULL AFTER album_title;

-- Modifying a column 
-- Syntax: table_name MODIFY column_name data_type extra_options
ALTER TABLE albums MODIFY album_title VARCHAR(50) NOT NULL;

-- Renaming a column
-- SYNTAX: ALTER TABLE table_name CHANGE COLUMN old_name new_name data_type extra_options;
ALTER TABLE albums CHANGE COLUMN year date_released DATE NOT NULL;

-- Create "songs" table
CREATE TABLE songs (
id INT NOT NULL AUTO_INCREMENT,
song_name VARCHAR(50) NOT NULL,
length TIME NOT NULL,
genre VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
PRIMARY KEY (id),
CONSTRAINT fk_songs_album_id
    FOREIGN KEY(album_id) REFERENCES albums(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- Create "users" table
CREATE TABLE users (
id INT NOT NULL AUTO_INCREMENT,
username VARCHAR(50) NOT NULL,
password VARCHAR(50) NOT NULL,
full_name VARCHAR(50) NOT NULL,
contact_number INT NOT NULL,
email VARCHAR(50),
address VARCHAR(50),
PRIMARY KEY (id)
);

-- Create "playlists" table
CREATE TABLE playlists (
id INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
datetime_created DATETIME NOT NULL,
PRIMARY KEY (id),
CONSTRAINT fk_playlists_user_id
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- Create a joining "playlists_songs" table (linking/associative table)
CREATE TABLE playlists_songs (
id INT NOT NULL AUTO_INCREMENT,
playlist_id INT NOT NULL,
song_id INT NOT NULL,
PRIMARY KEY (id),
CONSTRAINT fk_playlists_songs_playlist_id
    FOREIGN KEY (playlist_id) REFERENCES playlists(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
CONSTRAINT fk_playlists_songs_song_id
    FOREIGN KEY (song_id) REFERENCES songs(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);
