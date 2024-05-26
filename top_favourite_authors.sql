SELECT authors.*
FROM authors
JOIN books ON authors.author_id = books.author_id
ORDER BY books.avg_star DESC
