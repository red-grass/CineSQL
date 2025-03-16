# CineSQL Queries Part 2
This repository contains a series of SQL queries designed to showcase proficiency in relational database management, querying, and data analysis. The project involves working with a Movie Database, inspired by IMDb and Rotten Tomatoes, using PostgreSQL, pgModeler, and pgAdmin.

## Project Overview
The repository includes two main tasks:

## TASK 1: SQL Queries on Movie Database
This task involves writing and executing various SQL queries to extract meaningful insights from the movie database.

### Queries
1. List all directors born in Canada.
2. Find all movies directed by David Lynch (or another director X if not in the dataset).
3. List actors who played in movies with a production cost of more than $1M, converting costs to:
   CAD (Canadian Dollar)
   JPY (Japanese Yen)
   RUB (Russian Ruble)
   EUR (Euro)
   CHF (Swiss Franc)
4. Find directors whose surname starts with 'A' or 'D' using the LIKE operator.
5. List all comedy movies featuring an actor under 40 years old.
6. Find all pairs of actors with blue eyes, ensuring alphabetical ordering and avoiding duplicates (e.g., (Howard, Lynch), but not (Lynch, Lynch)).

#### Saved Queries: SQL1.sql
#### Query Results & Explanations: result.txt

## TASK 2: Advanced SQL Queries & Aggregation
This task involves aggregation, grouping, and ranking queries on the movie database.

### Queries
1. Find the average age of all actors.
2. Count the number of different countries where actors from the movie Beautiful Mind were born.
3. Find the number of actors with green eyes.
4. Count the number of movies featuring Brad Pitt (or another actor X if not in the dataset).
5. Find the minimum, average, and maximum budget for each movie type.
6. Compute the average rating of movies where the director was born in Toronto or had blue eyes.
7. List movies with actors born in at least two different countries.
8. Rank movies based on the number of awards received, displaying the titles.

#### Saved Queries: SQL2.sql
#### Query Results & Explanations: result.txt

## Technologies Used
* PostgreSQL
* pgModeler (Database modeling tool)
* pgAdmin (Database management)
* SQL (Queries, Joins, Aggregation, Optimization)

## How to Use
1. Clone the repository
2. Open the SQL scripts (SQL1.sql and SQL2.sql) in pgAdmin or any SQL client.
3. Run the queries against your PostgreSQL database.
4. Review the output results stored in result.txt.

