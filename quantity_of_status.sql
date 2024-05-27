SELECT
  CASE
    WHEN status = 0 THEN 'Đang được mượn'
    WHEN status = 1 THEN 'Có thể mượn'
    WHEN status = 2 THEN 'Quá hạn'
    WHEN status = -1 THEN 'Không thể mượn'
  END AS "Trạng thái",
  status AS "Mã trạng thái",
  COUNT(*) AS "Số lượng"
FROM books
GROUP BY status
ORDER BY status;
