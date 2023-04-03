WITH distinct_orders AS (
	select distinct
		number,
		DATE(date) AS date
	from orders
    )

select date,
		COUNT(*) As num_orders
from distinct_orders
GROUP BY 1
ORDER BY 1