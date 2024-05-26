SELECT
  CASE
    WHEN status = 0 THEN 'Đang được mượn'
    WHEN status = 1 THEN 'Có thể mượn'
    WHEN status = 2 THEN 'Quá hạn'
    ELSE 'Không thể mượn'
  END AS "Mã trạng thái",
  status AS "Giá trị trạng thái",
  COUNT(*) AS "Số lượng"
FROM books
GROUP BY status
ORDER BY status;
