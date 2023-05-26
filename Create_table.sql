create table if not EXISTS Collection (
	id SERIAL primary key,
	name VARCHAR (60) not null,
	year_of_issue integer NOT null
);

create table if not EXISTS Album (
	album_id SERIAL primary key,
	name VARCHAR (60) not null,
	year_of_issue integer not null check (year_of_issue > 1950)
);

create table if not EXISTS Track (
	track_id SERIAL primary key,
	name VARCHAR (60) not null,
	duration integer not null check(duration > 59),
	album_id integer references Album(album_id)
);

create table if not EXISTS Performer (
	performer_id SERIAL primary key,
	alias VARCHAR (60) not null
);

create table if not EXISTS Genre (
	genre_id SERIAL primary key,
	name VARCHAR (60) not null unique
);

create table if not EXISTS Track_Collection (
	id SERIAL primary key,
	collection_id integer not null references Collection(id),
	track_id integer not null references Track(track_id)
);

create table if not EXISTS Album_Performer (
	id SERIAL primary key,
	performer_id integer not null references Performer(performer_id),
	album_id integer references Album(album_id)
);

create table if not EXISTS Ganre_Performer (
	id SERIAL primary key,
	performer_id integer not null references Performer(performer_id),
	genre_id integer not null references Genre(genre_id)
);

