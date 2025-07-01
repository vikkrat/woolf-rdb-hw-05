USE `woolf-rdb-hw-03`;

WITH temp AS (
  SELECT * FROM order_details WHERE quantity > 10
)
SELECT order_id, AVG(quantity) AS avg_quantity
FROM temp
GROUP BY order_id;
