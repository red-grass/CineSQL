--Task 1 
--a. List all directors who were born in USA
SELECT DISTINCT d.first_name, d.surname
FROM public."Director" d
JOIN public."BirthLocation" b ON d."id_BirthLocation" = b.id
WHERE b.country = 'USA'

--b. Which movies are directed by Coralie Fargeat
SELECT m.title, m.date, m.rating
FROM public."Movie" m 
JOIN public."Director" d ON m.id = d."id_Movie" 
WHERE (d.first_name = 'Coralie' AND d.surname = 'Fargeat');

--c. List all the actors who played in the movies for which the cost of production was more than $1M. Compute cost in other currencies:
SELECT 
    m.title,
    m.budget,
    (m.budget * 1.39) AS cost_in_CAD,
    (m.budget * 153) AS cost_in_JPY,
    (m.budget * 98) AS cost_in_RUB,
    (m.budget * 0.93) AS cost_in_EUR,
    (m.budget * 0.87) AS cost_in_CHF
FROM "Movie" m
WHERE m.budget > 1000000;  

--d. Find all the directors whose surname start with letter "A" and "F"
SELECT DISTINCT d.first_name, d.surname
FROM "Director" d
WHERE surname LIKE 'A%' OR surname LIKE 'F%'

--e. Find all the horror movies with a playing actor who is less than 40 (age)
SELECT m.title, a.first_name, a.surname, a.year_of_birth
FROM public."Movie" m
JOIN public."MovieGenre" mg ON m.id = mg."id_Movie"
JOIN public."Genre" g ON mg."id_Genre" = g.id
JOIN public."MovieActor" ma ON m.id = ma."id_Movie"
JOIN public."Actor" a ON ma."id_Actor" = a.id
WHERE g.type = 'Horror'AND EXTRACT(YEAR FROM CURRENT_DATE) - a.year_of_birth < 40;

--f. Find all pairs of actors who have blue eye color in alphabetic order 
SELECT a.first_name, a.surname
FROM public."Actor" a
WHERE a.eye_color = 'blue'
ORDER BY a.first_name, a.surname;

