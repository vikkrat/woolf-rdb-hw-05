USE `woolf-rdb-hw-03`;

SELECT *,
  (SELECT o.customer_id FROM orders o WHERE o.id = od.order_id) AS customer_id
FROM order_details od;
