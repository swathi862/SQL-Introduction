--Querying Data
--SELECT
--    Id,
--    Title,
--    SongLength,
--    ReleaseDate,
--    GenreId,
--    ArtistId,
--    AlbumId
--FROM Song;

--SELECT * FROM Song

--SELECT
--    Id,
--    Title,
--    ReleaseDate
--FROM Song;

--Filtering Queries
--SELECT
--    Id,
--    Title,
--    SongLength,
--    ReleaseDate,
--    GenreId,
--    ArtistId,
--    AlbumId
--FROM Song
--WHERE SongLength > 100
--;

--Joining Tables
--SELECT s.Title,
--       a.ArtistName
--  FROM Song s
--       LEFT JOIN Artist a on s.ArtistId = a.id;

--Creating New Data
--INSERT INTO Genre (Label) VALUES ('Techno');

--Updating Existing Data
--select SongLength from Song where Id = 18;

-- The following is the output you get when you run the query above.
--> 237

--update Song
--set SongLength = 515
--where Id = 18;

-- Once you run the update statement, in order to make sure the value has changed, we run the select query again.
--select SongLength from Song where Id = 18;
--> 515

--Deleting Data
--delete from Song where Id = 18;
--leaving off the WHERE clause will remove ALL ROWS from the table!!

--Query all entries in the Genre table
--SELECT * FROM Genre;
--INSERT INTO Genre (Label) VALUES ('Indie folk');

--Add an artist to the Artist table
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Taylor Swift', 2006);

--Add an album to the Album table
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Folklore', 2020, 3809, 'Republic', 28, 16);

--Add a song to the Song table
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('exile', 287, '07/24/2020', 16, 28, 27);

--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id; //Does not work because song id is not a part of album
--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;

--SELECT an.ArtistName, s.Title, a.Title FROM Song s LEFT JOIN Artist an ON s.ArtistId = an.Id LEFT JOIN Album a ON s.AlbumId = a.Id WHERE AlbumId = 27;

--number of songs per album
--SELECT Count(a.Title) AS 'Number of Songs', a.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id GROUP BY a.Title;

--number of songs per artist
--SELECT Count(a.ArtistName) AS 'Number of Songs', a.ArtistName FROM Song s LEFT JOIN Artist a ON s.ArtistId = a.Id GROUP BY a.ArtistName;

--number of songs per genre
--SELECT Count(g.Label) AS 'Number of Songs', g.Label FROM Song s LEFT JOIN Genre g ON s.GenreId = g.Id GROUP BY g.Label;

--album with longest duration and album title
--SELECT Max(AlbumLength) AS 'Duration' FROM Album;
--SELECT Title, AlbumLength AS ' Max Duration' FROM Album WHERE AlbumLength = (SELECT MAX(AlbumLength) FROM Album);

--song with the longest duration and song title
--SELECT Title, SongLength AS 'Max Duration' FROM Song WHERE SongLength = (SELECT MAX(SongLength) FROM Song);

--song with the longest duration, song title, and album title
--SELECT Album.Title, Song.Title, Song.SongLength AS 'Max Duration' FROM Song LEFT JOIN Album ON Song.AlbumId = Album.Id WHERE Song.SongLength = (SELECT MAX(Song.SongLength) FROM Song);

