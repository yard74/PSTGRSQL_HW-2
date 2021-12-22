create table if not exists Жанры (
	Код serial primary key,
	Название varchar(50) not null
);

create table if not exists Исполнители (
	Код serial primary key,
	Псевдоним varchar(100) not null,
	КодЖанра integer references Жанры(Код)
);

create table if not exists Альбомы (
	Код serial primary key,
	Название varchar(100) not null,
	ГодВыпуска varchar(10),
	КодИсполнителя integer references Исполнители(Код)
);

create table if not exists Треки (
	Код serial primary key,
	Название varchar(100) not null,
	Длительность varchar(100) not null,
	КодАльбома integer references Альбомы(Код)
);