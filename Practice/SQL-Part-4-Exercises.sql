USE BooksDB;
GO
/*Instructions
- UNION, INTERSECT, EXCEPT
- nested, correlated
- NO joins or multiple statements to WHERE clause*/

--Q1
SELECT COUNT(user_id)
FROM dbo.ratings AS r
WHERE rating > (SELECT average_rating
    FROM dbo.books AS b
    WHERE r.book_id=b.book_id);

--Q2 
SELECT book_id
FROM dbo.books
WHERE ratings_1>1000 OR ratings_5>1000
ORDER BY book_id;


SELECT book_id
FROM dbo.books
EXCEPT
SELECT book_id
FROM dbo.books
WHERE ratings_1<=1000 AND ratings_5<=1000;

--Q3
SELECT book_id
FROM dbo.books
EXCEPT
SELECT book_id
FROM dbo.books
WHERE ratings_1<=1000 OR ratings_5<=1000;

--Q4 (idk how this can be done with a subquery..)
SELECT book_id
FROM dbo.books
WHERE language_code = 'en-GB';

--Q5
SELECT tag_name
FROM dbo.tags
WHERE tag_id IN (
    SELECT tag_id
    FROM dbo.book_tags
    GROUP BY tag_id
    HAVING SUM(count)>100000);

