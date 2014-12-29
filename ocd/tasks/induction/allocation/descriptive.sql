
--
-- compare ordered items versus inventory
--

SELECT o.sku_id,
       o.qty_ordered AS ordered,
       s.qty_stock   AS available,
       (s.qty_stock - o.qty_ordered) AS diff
  FROM
    (
        SELECT sku_id,
               SUM(quantity) AS qty_ordered
          FROM order_items
        GROUP BY sku_id
    ) AS o
    LEFT JOIN (
        SELECT sku_id,
               quantity AS qty_stock
          FROM inventory
    ) s USING(sku_id)
ORDER BY o.sku_id;