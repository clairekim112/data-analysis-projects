USE BooksDB;
GO
--Part 1
--Event 1 (woman writers)

SELECT b.authors, b.average_rating, bt.tag_id, t.tag_name, SUM(bt.count)AS 'tag mention count'
FROM dbo.books AS b
LEFT JOIN dbo.book_tags AS bt ON b.best_book_id = bt.goodreads_book_id
LEFT JOIN dbo.tags as t ON bt.tag_id=t.tag_id
GROUP BY bt.tag_id, b.authors, b.average_rating, t.tag_name
HAVING t.tag_name LIKE '%women%' OR t.tag_name LIKE '%female%'
ORDER BY average_rating DESC;


--Event 2(earth day)
SELECT b.authors, b.title, b.average_rating, bt.tag_id, t.tag_name, SUM(bt.count) AS 'tag mention count'
FROM dbo.books AS b
LEFT JOIN dbo.book_tags AS bt ON b.best_book_id = bt.goodreads_book_id
LEFT JOIN dbo.tags as t ON bt.tag_id=t.tag_id
GROUP BY bt.tag_id, b.authors, b.average_rating, b.title, t.tag_name
HAVING t.tag_name LIKE '%environment%'
ORDER BY average_rating DESC;

--Part 2 (May; Mother's Day, Cinco De mayo Day)
SELECT b.authors, b.title, b.average_rating, bt.tag_id, t.tag_name, SUM(bt.count) AS 'tag mention count'
FROM dbo.books AS b
LEFT JOIN dbo.book_tags AS bt ON b.best_book_id = bt.goodreads_book_id
LEFT JOIN dbo.tags as t ON bt.tag_id=t.tag_id
GROUP BY bt.tag_id, b.authors, b.average_rating, b.title, t.tag_name
HAVING t.tag_name LIKE '%mom%' OR t.tag_name LIKE '%mother%';

SELECT b.authors, b.title, b.average_rating, bt.tag_id, t.tag_name, SUM(bt.count) AS 'tag mention count'
FROM dbo.books AS b
LEFT JOIN dbo.book_tags AS bt ON b.best_book_id = bt.goodreads_book_id
LEFT JOIN dbo.tags as t ON bt.tag_id=t.tag_id
GROUP BY bt.tag_id, b.authors, b.average_rating, b.title, t.tag_name
HAVING t.tag_name LIKE '%cinco de mayo%' OR t.tag_name LIKE '%hispanic%';