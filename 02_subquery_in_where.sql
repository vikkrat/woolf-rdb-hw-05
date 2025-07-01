USE `woolf-rdb-hw-03`;

SELECT *
FROM order_details od
WHERE order_id IN (
  SELECT id FROM orders WHERE shipper_id = 3
);
