--Part 1
--Q1: The Complete Calvin and Hobbes
SELECT TOP 100 book_id, authors, title, average_rating AS "Average Rating"
FROM booksdb.dbo.books
ORDER BY average_rating DESC;

--Q2: One Night at the Call Center
SELECT TOP 1 book_id, authors, title, average_rating AS "Average Rating"
FROM booksdb.dbo.books
ORDER BY average_rating ASC;

--Q3: 30574
SELECT TOP 1 tag_id
FROM booksdb.dbo.book_tags
GROUP BY tag_id
ORDER BY COUNT(tag_id) DESC;

--Q4: to-read
SELECT tag_name
FROM booksdb.dbo.tags
WHERE tag_id IN (SELECT TOP 1 tag_id
FROM booksdb.dbo.book_tags
GROUP BY tag_id
ORDER BY COUNT(tag_id) DESC);

--Q5: 3584
SELECT COUNT(original_publication_year)
FROM booksdb.dbo.books
WHERE original_publication_year>1999 AND original_publication_year<2011;

--Q6:11
SELECT COUNT(original_title)
FROM booksdb.dbo.books
WHERE original_title LIKE '%happy%';

--Q7:
SELECT original_title, authors
FROM booksdb.dbo.books
WHERE authors IN (
    SELECT TOP 3 authors
    FROM booksdb.dbo.books
    ORDER BY average_rating DESC);

--Q8:25
SELECT COUNT(authors)
FROM booksdb.dbo.books
WHERE authors BETWEEN 'Rock' AND 'Roll';

--Q9: What year books does the library hold the most of? 2012

SELECT TOP 1 Original_publication_year
FROM booksdb.dbo.books
GROUP BY original_publication_year
ORDER BY COUNT(original_publication_year) DESC;

--Q10: What author collaboration is the most common? Douglas Preston, Lincoln Child
SELECT TOP 1 authors
FROM booksdb.dbo.books
WHERE authors LIKE '%,%'
GROUP BY authors
ORDER BY COUNT (authors) DESC;

--Q11: What book has the longest title? Soccernomics: Why England Loses, Why Germany and Brazil Win, and Why the U.S., Japan, Australia, Turkey--and Even Iraq--Are Destined to Become the Kings of the World's Most Popular Sport
SELECT TOP 1 title 
FROM booksdb.dbo.books
ORDER BY LEN(title) DESC;

--Q12: What were the top 10 books published the year I was born?
SELECT TOP 10 title, original_publication_year, average_rating
FROM booksdb.dbo.books
WHERE original_publication_year='1997'
ORDER BY average_rating DESC;