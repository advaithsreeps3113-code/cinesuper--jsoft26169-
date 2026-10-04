-- Q1. Movies with genre name (INNER JOIN)
select m.title, m.release_year, g.name as genre
from movies m join genres g on g.id = m.genre_id;

-- Q2. Movies per genre (GROUP BY)
select g.name, count(m.id) as total_movies
from genres g left join movies m on m.genre_id = g.id
group by g.name order by total_movies desc;

-- Q3. Movies longer than 150 minutes
select title, duration_min from movies where duration_min > 150;

-- Q4. Malayalam movies after 2015
select title, release_year from movies
where language = 'Malayalam' and release_year > 2015;

-- Q5. Average rating at least 4.5 (HAVING)
select m.title, round(avg(r.rating),1) as avg_rating
from movies m join reviews r on r.movie_id = m.id
group by m.title having avg(r.rating) >= 4.5;

-- Q6. Movies with no reviews (subquery)
select title from movies
where id not in (select movie_id from reviews);

-- Q7. Longest movie
select title, duration_min from movies
where duration_min = (select max(duration_min) from movies);

-- Q8. Update a description
update movies set description = 'An epic sci-fi journey through space and time.'
where title = 'Interstellar';
-- Part B Q1. All reviews with the movie title
SELECT
    r.id AS review_id,
    m.title,
    r.rating,
    r.comment
FROM reviews r
JOIN movies m ON m.id = r.movie_id;


-- Part B Q2. Number of movies per language
SELECT
    language,
    COUNT(*) AS total_movies
FROM movies
GROUP BY language
ORDER BY total_movies DESC;


-- Part B Q3. The newest movie in the database
SELECT
    title,
    release_year
FROM movies
ORDER BY release_year DESC
LIMIT 1;


-- Part B Q4. Movies whose title starts with M
SELECT
    title,
    release_year
FROM movies
WHERE title LIKE 'M%';


-- Part B Q5. Delete one review
DELETE FROM reviews
WHERE id = 1; -- Replace 1 with the actual review ID you want to delete 