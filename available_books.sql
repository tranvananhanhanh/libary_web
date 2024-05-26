SELECT
    COUNT(*) AS "số lượng có thể mượn"
FROM books
WHERE staff_id = 'abc' AND status = 1
ORDER BY status;