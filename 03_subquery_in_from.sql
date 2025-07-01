USE `woolf-rdb-hw-03`;

SELECT order_id, AVG(quantity) AS avg_quantity
FROM (
  SELECT * FROM order_details WHERE quantity > 10
) AS filtered
GROUP BY order_id;
