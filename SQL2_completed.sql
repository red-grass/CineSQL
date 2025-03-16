--Task 2 
-- a. From table Actors find the average age.
SELECT AVG(2024 - year_of_birth) AS average_age
FROM public."Actor";

--b. Find the number of different countries in which actors from the movie “Smile” were born
SELECT COUNT(DISTINCT a."id_BirthLocation") AS country_count
FROM public."Actor" a
JOIN public."MovieActor" ma ON a.id = ma.id
JOIN public."Movie" m ON ma.id = m.id
WHERE m.title = 'Smile';

--c. Find the number of actors with blue eye color
SELECT COUNT(*) AS eye_color 
FROM public."Actor" a
WHERE a.eye_color = 'blue';

--d. What is the number of movies in which Brad Pitt was playing?
SELECT COUNT(*) AS movie_count
FROM public."Movie" m 
JOIN public."MovieActor" ma ON m.id = ma."id_Movie"
JOIN public."Actor" a ON ma."id_Actor" = a.id
WHERE (a.first_name = 'Brad' AND a.surname = 'Pitt');

--e. Find the minimum, average and maximum budget for each type of movie.
SELECT g.type AS genre, 
       MIN(m.budget) AS min_budget, 
       AVG(m.budget) AS avg_budget, 
       MAX(m.budget) AS max_budget
FROM public."Movie" m
JOIN public."MovieGenre" mg ON m.id = mg."id_Movie"
JOIN public."Genre" g ON mg."id_Genre" = g.id
GROUP BY g.type;

--f. Find the average rating for each movie which has director born in New York or green eye color.
SELECT m.title, AVG(m.rating) AS average_rating
FROM public."Movie" m
JOIN public."Director" d ON m.id = d."id_Movie"
JOIN public."BirthLocation" bl ON d."id_BirthLocation" = bl.id
JOIN public."MovieActor" ma ON m.id = ma."id_Movie"
JOIN public."Actor" a ON ma."id_Actor" = a.id
WHERE (bl.city = 'New York' OR a.eye_color = 'green')
GROUP BY m.title;

--g. Find all the movies that have actors born in at least two different countries.
SELECT m.title
FROM public."Movie" m
JOIN public."MovieActor" ma ON m.id = ma."id_Movie"
JOIN public."Actor" a ON ma."id_Actor" = a.id
JOIN public."BirthLocation" bl ON a."id_BirthLocation" = bl.id
GROUP BY m.title
HAVING COUNT(DISTINCT bl.country) > 1;
# There is no output since I do not have any movies that have actors born in two diff countries 

--h. Find how many awards each movie in total has received and rank the movies (display the title) by the amount of awards
SELECT m.title, COUNT(a.award_id) AS total_awards
FROM public."Movie" m
JOIN public."Award" a ON m.id = a."id_Movie"
GROUP BY m.title
ORDER BY total_awards DESC;









