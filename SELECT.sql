SELECT name, duration FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

SELECT name FROM track
WHERE duration > 210;

SELECT name FROM collection
WHERE year_of_issue BETWEEN 2018 AND 2020;

SELECT alias FROM performer
WHERE alias NOT LIKE('% %');

SELECT name FROM track
WHERE name LIKE('%Мой%') OR name LIKE ('%My%') OR name LIKE ('%my%') OR name LIKE ('%мой%');

SELECT name, COUNT(performer_id) FROM ganre_performer
JOIN genre ON genre.genre_id = ganre_performer.genre_id 
GROUP BY name

SELECT COUNT(track."name") FROM track
JOIN album ON album.album_id = track.album_id
WHERE year_of_issue BETWEEN 2019 AND 2020;

SELECT album."name", AVG(duration) FROM album
JOIN track ON album.album_id = track.album_id
GROUP BY album."name";

SELECT alias FROM performer
WHERE alias NOT IN 
	(SELECT alias FROM album_performer
	JOIN album ON album_performer.album_id = album.album_id
	JOIN performer ON album_performer.performer_id = performer.performer_id
	WHERE album.year_of_issue = 2020);

SELECT c."name" FROM track_collection tc
JOIN collection c ON tc.collection_id = c.id
JOIN track t ON tc.track_id = t.track_id
JOIN album a ON t.album_id = a.album_id
JOIN album_performer ap ON a.album_id = ap.album_id
JOIN performer p ON ap.performer_id = p.performer_id 
WHERE alias = '6ix9ine'