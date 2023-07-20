WITH mytable AS (
       SELECT food.f_name, menu.f_id,menu.price
	    FROM food
	    JOIN menu
	    ON food.f_id = menu.f_id
)
SELECT mytable.f_id, mytable.f_name, AVG(mytable.price) AS Average_Cost
FROM mytable
GROUP BY mytable.f_id, mytable.f_name
ORDER BY Average_Cost;
