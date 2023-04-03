WITH distinct_orders AS(
	select distinct
		number,
        DATE(date) as date
	From orders
    )
    
select 
	DATE(date, '1 DAY', 'WEEKDAY 1', '-7 DAYS') AS week,
    COUNT(*) as num_orders
FROM distinct_orders
GROUP BY 1
ORDER BY 1
		