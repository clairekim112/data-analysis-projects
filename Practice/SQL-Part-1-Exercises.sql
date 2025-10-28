--A
--Question 1
SELECT Top 1000*
FROM booksdb.dbo.books;


--Question 2
SELECT COUNT(original_title)
FROM booksdb.dbo.books;


--Question 3
SELECT COUNT(original_title)
FROM booksdb.dbo.books
WHERE original_publication_year>1800;

--Question 4
SELECT DISTINCT authors
FROM booksdb.dbo.books;

--Question 5
SELECT original_title
FROM booksdb.dbo.books
WHERE language_code LIKE 'en%'

--Question 6
SELECT original_title
FROM booksdb.dbo.books
WHERE original_publication_year >1913 AND original_publication_year<1922;

--B
--Question 1
SELECT TOP 1000 *
FROM booksdb.dbo.book_tags
ORDER BY tag_id;

--Question 2
SELECT tag_id, COUNT(goodreads_book_id)
FROM booksdb.dbo.book_tags
GROUP BY tag_id;

--Question 3
SELECT tag_id, COUNT(goodreads_book_id) AS Tag_Count
FROM booksdb.dbo.book_tags
GROUP BY tag_id;

--C
--Question 1
SELECT TOP 1000 *
FROM booksdb.dbo.ratings
ORDER BY rating DESC

--Question 2
SELECT COUNT(user_id)
FROM booksdb.dbo.ratings
WHERE rating <2;

--Question 3 
SELECT COUNT(book_id)
FROM booksdb.dbo.ratings
WHERE rating>3;

SELECT COUNT(countavg.book_id)
FROM(SELECT book_id
    FROM booksdb.dbo.ratings
    GROUP BY book_id
    HAVING AVG(rating)>3) AS countavg;

--D
--Question 1
SELECT *
FROM booksdb.dbo.tags
WHERE tag_name LIKE '%mystery%';

--Question 2
SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name < 'd' AND tag_name >= 'c';
/*returns all tag names that has the starting alphabet of "c"*/

--E
--Question 1
SELECT user_id, COUNT(book_id) AS 'Total Books to Read'
FROM booksdb.dbo.to_read
GROUP BY user_id
ORDER BY user_id;

--Question 2
SELECT user_id, COUNT(book_id) AS 'Total Books to Read'
FROM booksdb.dbo.to_read
GROUP BY user_id
ORDER BY COUNT(book_id) DESC;
