INSERT INTO performer (performer_id, alias)
	VALUES (1, 'Скриптонит'), (2, 'Градусы'), (3, 'Linkin park'), (4, 'Звери'), (5, '6ix9ine');
	
INSERT INTO genre (genre_id, name)
	VALUES (1, 'Поп'), (2, 'Рок'), (3, 'Хип-хоп');
	
INSERT INTO album (album_id, name, year_of_issue)
	VALUES (1, 'Meteora', 2003), (2, 'Праздник на улице 36', 2017), (3, 'TattleTales', 2020);
	
INSERT INTO track (track_id, name, duration, album_id)
	VALUES (1, 'Вечеринка', 363, 2), (2, 'A Place for My Head', 184, 1), (3, 'From the inside', 175, 1), (4, 'Градус 100', 218, NULL), (5, 'Swervin', 189, 3), (6, 'Районы-кварталы', 204, NULL);
	
INSERT INTO Collection (id, name, year_of_issue)
	VALUES (1, 'Сборник хитов 2007', 2007), (2, 'Сборник хитов 2017', 2017), (3, 'Сборник хитов 2020', 2020), (4, 'Сборник хитов 2003', 2003);
	
INSERT INTO Track_Collection (collection_id, track_id)
	VALUES (1, 6), (2, 1), (2, 4), (3, 5), (4, 2), (4, 3);
	
INSERT INTO Album_Performer (performer_id, album_id)
	VALUES (1, 2), (2, NULL), (3, 1), (4, NULL), (5, 3);
	
INSERT INTO Ganre_Performer (performer_id, genre_id)
	VALUES (1, 3), (2, 1), (3, 2), (4, 2), (5, 3);