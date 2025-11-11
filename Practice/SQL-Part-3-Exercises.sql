USE BooksDB;
GO

/*
Q1
A: Left table is dbo.books and right table is dbo.to_read.
B: It made the left join an inner join because the query only looks for books that have book_ids that the join between two tables are made on. 

Q2
A: Left table is dbo.books and right able is dbo.to_read
B: There are books with user ID and book id but no title, average rating and book count. The columns for the right table are populated while columns for left are not.

Q3
A: When you want to see all the data including all the null across the columns!

Q4
A: Only show rows in both tables that have matching join keys. 
B: No, because the query only returns columns that have corresponding book ids in dbo.books table.
C: 
*/

--Q5
--Part A: Harry Potter and the Sorcerer's Stone (Harry Potter, #1); 3

SELECT b.best_book_id, b.title, SUM(t.count) AS num_tagged
FROM dbo.books AS b
LEFT JOIN dbo.book_tags AS t
ON b.best_book_id = t.goodreads_book_id
GROUP BY b.best_book_id, b.title
ORDER BY SUM(t.count) DESC;

SELECT *
FROM dbo.book_tags;

--Part B: 100
SELECT b.best_book_id, t.tag_id, t.count
FROM dbo.books AS b
LEFT JOIN dbo.book_tags AS t
ON b.best_book_id = t.goodreads_book_id
WHERE b.best_book_id='3';

--Part C: 30574


--Q6
--Part A: Tag_name(cook-books), Tag_id(8116)
SELECT *
FROM dbo.tags
WHERE tag_name LIKE '%cook%';

--Part B: The Joy of Cooking; 163 count
SELECT b.best_book_id, b.title, t.tag_id, t.[count]
FROM dbo.books AS b
LEFT JOIN dbo.book_tags AS t
ON b.best_book_id=t.goodreads_book_id
WHERE t.tag_id='8116'
ORDER BY t.count DESC;

--Q7
-- Part A: best_book_id and book_id
-- Part B: The Ultimate Hitchhiker's Guide to the Galaxy saved by 1812 people. 
SELECT r.book_id, b.title, COUNT(user_id) AS num_ppl_saved
FROM dbo.books AS b
LEFT JOIN dbo.to_read AS r
ON b.best_book_id=r.book_id
GROUP BY r.book_id, b.title
ORDER BY count(user_id) DESC;

--Q8
--Part A: 
SELECT TOP 10 r.user_id, COUNT(b.title) AS count_of_saved_books
FROM dbo.books AS b
LEFT JOIN dbo.to_read AS r
ON b.best_book_id=r.book_id
WHERE r.user_id IS NOT NULL
GROUP BY r.user_id
ORDER BY COUNT(b.title) DESC;

--Part B:14771
SELECT b.title
FROM dbo.books AS b
LEFT JOIN dbo.to_read AS r
ON b.best_book_id=r.book_id
WHERE r.[user_id]='14771';