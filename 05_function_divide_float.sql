USE `woolf-rdb-hw-03`;

DROP FUNCTION IF EXISTS divide_float;

DELIMITER $$

CREATE FUNCTION divide_float(x FLOAT, y FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
  RETURN x / y;
END $$

DELIMITER ;

-- Використання функції:
SELECT id, product_id, quantity, divide_float(quantity, 2) AS result
FROM order_details;
