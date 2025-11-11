USE BooksDB;
GO

--Q1
SELECT TOP 1 LEN(title) AS Length
FROM dbo.books
ORDER BY LEN(title) DESC;

SELECT title 
FROM dbo.books
WHERE LEN(title) =
    (SELECT TOP 1 LEN(title) AS Length
    FROM booksdb.dbo.books
    ORDER BY LEN(title) DESC);

--OR

SELECT TOP 1 Title, LEN(title)
FROM booksdb.dbo.books
ORDER BY LEN(title) DESC;

/* Q2
- Find length of the shortest author 
- Find their name */
SELECT TOP 1 LEN(authors)
FROM booksdb.dbo.books
ORDER BY LEN(authors) ASC;

SELECT authors
FROM booksdb.dbo.books
WHERE LEN(authors) = 
    (SELECT TOP 1 LEN(authors)
    FROM booksdb.dbo.books
    ORDER BY LEN(authors) ASC);

--Q3
SELECT COUNT(title)AS Count_The
FROM booksdb.dbo.books
WHERE title LIKE '%the%'

SELECT COUNT(title)AS Count_The
FROM booksdb.dbo.books
WHERE title LIKE 'The%'

--Since Like in case insensitive in the SQL server, with Chat GPT, I found a case-sensitive collation
SELECT COUNT(*) AS Count_The
FROM booksdb.dbo.books
WHERE title LIKE '%The%' COLLATE SQL_Latin1_General_CP1_CS_AS;

SELECT COUNT(*) AS Count_The
FROM booksdb.dbo.books
WHERE title LIKE '%the%' COLLATE SQL_Latin1_General_CP1_CS_AS;

--Q4
SELECT COUNT(authors) AS authors_with_z_names
FROM booksdb.dbo.books
WHERE authors LIKE 'Z%';

--Q5
SELECT language_code
FROM dbo.books;

SELECT title, language_code
FROM dbo.books
WHERE language_code NOT IN ('en','eng','en-US','en-UK');

SELECT title, language_code
FROM dbo.books
WHERE  LEFT(language_code, 2) <>'en'
    AND LEFT(language_code, 3) <>'eng'
    AND LEFT(language_code, 5) <>'en-US'
    AND LEFT(language_code, 5) <>'en-UK';

SELECT title, language_code
FROM dbo.books
WHERE NOT(LEFT(language_code, 2) ='en'
    OR LEFT(language_code, 3) ='eng'
    OR LEFT(language_code, 5) ='en-US'
    OR LEFT(language_code, 5) ='en-UK');

--Q6
SELECT title, language_code
FROM dbo.books
WHERE SUBSTRING(language_code,1,2) <> 'en';

--Q7
SELECT CONCAT(title, ' by ', authors, ' in ', language_code, 'language') AS introduction
FROM dbo.books

--Q7 A: Language Code contained 1084 null values
SELECT COUNT(*)
FROM dbo.books
WHERE title IS NULL;

SELECT COUNT(*)
FROM dbo.books
WHERE authors IS NULL;

SELECT COUNT(*)
FROM dbo.books
WHERE language_code IS NULL;

--Q8, 9
SELECT CONCAT(title, ' by ', authors, ' in ', COALESCE(language_code, 'unknown'), ' language.') AS introduction
FROM dbo.books
WHERE language_code IS NULL;