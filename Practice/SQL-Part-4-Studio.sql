USE BooksDB;
GO

/*Instructions
- UNION, INTERSECT, EXCEPT
- nested, correlated
- NO joins or multiple statements to WHERE clause*/


--Q1
SELECT title, authors
FROM dbo.books
WHERE CHARINDEX(',', authors) >0

--Q2
SELECT b.title, t.tag_name
FROM dbo.books AS b
LEFT JOIN dbo.book_tags AS bt
ON b.book_id=bt.goodreads_book_id
LEFT JOIN dbo.tags AS t
ON bt.tag_id=t.tag_id
WHERE t.tag_name LIKE '%Meditation%';

--Q3
SELECT title, original_title
FROM dbo.books
WHERE title = original_title AND average_rating>=4.2;

SELECT title, original_title
FROM dbo.books
WHERE book_id IN (
    SELECT book_id
    FROM dbo.books
    WHERE title = original_title
      AND average_rating >= 4.2)


--Q4
--Part A:
SELECT title, average_rating,
    (SELECT AVG(rating)
    FROM dbo.ratings AS r
    WHERE r.book_id=b.book_id) AS reader_average_rating
FROM dbo.books AS b;

--Part B:
SELECT title
FROM dbo.books AS b
WHERE average_rating < (SELECT AVG(rating)
    FROM dbo.ratings AS r
    WHERE r.book_id=b.book_id)
ORDER BY original_publication_year, title;
