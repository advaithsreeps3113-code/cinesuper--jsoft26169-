-- PHASE 12: PERSONALISATION

-- Add a new genre
insert into genres (name)
values ('Horror');

-- Add 5 new movies
insert into movies
(title, release_year, language, duration_min, description, poster_url, genre_id)
values

('Bhoothakaalam', 2022, 'Malayalam', 105,
'A mother and son experience disturbing supernatural events in their home.',
'https://placehold.co/300x450/450a0a/ffffff?text=Bhoothakaalam',
(select id from genres where name = 'Horror')),

('Romancham', 2023, 'Malayalam', 132,
'A group of friends experience frightening events after playing a spirit board game.',
'https://placehold.co/300x450/581c87/ffffff?text=Romancham',
(select id from genres where name = 'Horror')),

('Bramayugam', 2024, 'Malayalam', 139,
'A folk singer encounters mysterious supernatural forces in an ancient mansion.',
'https://placehold.co/300x450/292524/ffffff?text=Bramayugam',
(select id from genres where name = 'Horror')),

('Tumbbad', 2018, 'Hindi', 104,
'A man discovers a hidden treasure connected to an ancient and terrifying legend.',
'https://placehold.co/300x450/7c2d12/ffffff?text=Tumbbad',
(select id from genres where name = 'Horror')),

('A Quiet Place', 2018, 'English', 90,
'A family struggles to survive in a world inhabited by creatures that hunt by sound.',
'https://placehold.co/300x450/164e63/ffffff?text=A+Quiet+Place',
(select id from genres where name = 'Horror'));
-- Add IMDb rating column
alter table movies
add column imdb_rating numeric(3,1);

-- Update IMDb ratings for selected movies
update movies set imdb_rating = 8.5
where title = 'Drishyam';

update movies set imdb_rating = 8.3
where title = 'Premam';

update movies set imdb_rating = 8.2
where title = 'Bangalore Days';

update movies set imdb_rating = 8.0
where title = 'Minnal Murali';

update movies set imdb_rating = 8.2
where title = 'Manjummel Boys';

update movies set imdb_rating = 8.1
where title = 'Bhoothakaalam';

update movies set imdb_rating = 7.3
where title = 'Romancham';

update movies set imdb_rating = 7.8
where title = 'Bramayugam';

update movies set imdb_rating = 8.2
where title = 'Tumbbad';

update movies set imdb_rating = 7.5
where title = 'A Quiet Place';