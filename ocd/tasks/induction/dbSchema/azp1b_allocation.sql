

--
-- picks table
--
DROP TABLE IF EXISTS picks;

CREATE TABLE picks (
    pick_id    BIGINT,
    order_id   BIGINT,
    sku_id     BIGINT,
    picked_at  TIMESTAMP,
    has_failed BOOLEAN DEFAULT FALSE
);

ALTER TABLE picks ADD CONSTRAINT pick_id_pk PRIMARY KEY (pick_id);
