create database netflix;

use netflix;

create table movies (
movie_id int primary key,
Title varchar(50),
release_year int,
Genre_id int,
Genre_name varchar (50),
Director_ID int,
Rating int
);

create table genre(
movie_category_id int primary key,
movie_category_name varchar(50),
movie_id int,
foreign key(movie_id) references movies(movie_id)
);

create table directors(
director_id int primary key,
movie_category_id int,
movie_id int,
foreign key(movie_id) references movies(movie_id)
);

Create table actors (
movie_id int,
movie_category_id int,
director_id int,
foreign key(movie_id) references movies(movie_id),
foreign key(movie_category_id) references genre(movie_category_id),
foreign key(director_id) references directors(director_id)
);

create table shows(
show_id int primary key,
movie_id int,
movie_category_id int,
director_id int,
foreign key(movie_id) references movies(movie_id),
foreign key(movie_category_id) references genre(movie_category_id),
foreign key(director_id) references directors(director_id)
);

create table musical_shows(
musical_shows_id int primary key,
movie_category_id int,
director_id int,
foreign key(movie_category_id) references genre(movie_category_id),
foreign key(director_id) references directors(director_id)
);

