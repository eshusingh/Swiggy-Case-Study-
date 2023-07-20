SELECT r.r_name,COUNT(*) 
FROM orders o
JOIN restaurants r
ON o.r_id = r.r_id
WHERE
EXTRACT(month FROM date::date) = 6
GROUP BY r.r_id
ORDER BY COUNT(*) DESC
LIMIT 1;
