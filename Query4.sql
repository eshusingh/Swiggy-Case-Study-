SELECT r.r_name, SUM(amount) AS "revenue"
FROM orders o
JOIN restaurants r
ON o.r_id = r.r_id
WHERE
EXTRACT(month FROM date::date) = 6
GROUP BY r.r_id
HAVING SUM(amount) > 500
ORDER BY revenue DESC;
