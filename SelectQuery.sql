SELECT
	movies.id,
	movies.title,
	movies.director,
	movies.released,
	movies.ratings,
	director_movie_counts.movie_count 
	
FROM
	movies
	JOIN ( SELECT director, COUNT(*) AS movie_count FROM movies GROUP BY director ) AS director_movie_counts ON movies.director = director_movie_counts.director 
	
HAVING
	ratings >= 8.5
	 
ORDER BY
	id ASC;