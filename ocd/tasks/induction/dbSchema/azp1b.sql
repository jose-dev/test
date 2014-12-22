
--
-- customers table
--
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id    BIGINT,
    customer_name  VARCHAR(100)
);

ALTER TABLE customers ADD CONSTRAINT customers_pk PRIMARY KEY (customer_id);


--
-- locations table
--
DROP TABLE IF EXISTS locations;

CREATE TABLE locations (
    location_id           BIGINT,
    location_name         VARCHAR(255),
    location_description  TEXT
);

ALTER TABLE locations ADD CONSTRAINT location_pk PRIMARY KEY (location_id);




--
-- sku table
--
DROP TABLE IF EXISTS skus;

CREATE TABLE skus (
    sku_id            BIGINT,
    sku_description   TEXT,
    sku_volume_in_cc  NUMERIC,
    sku_weight_in_kg  NUMERIC,
    sku_price_in_gbp  NUMERIC,
    location_id       BIGINT
);

ALTER TABLE skus ADD CONSTRAINT sku_pk PRIMARY KEY (sku_id);


--
-- inventory table
--
DROP TABLE IF EXISTS inventory;

CREATE TABLE inventory (
    inventory_id  BIGINT,
    sku_id        BIGINT,
    quantity      BIGINT
);

ALTER TABLE inventory ADD CONSTRAINT inventory_pk PRIMARY KEY (inventory_id);


--
-- orders table
--
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id       BIGINT,
    customer_id    BIGINT
);

ALTER TABLE orders ADD CONSTRAINT order_pk PRIMARY KEY (order_id);


--
-- order_items table
--
DROP TABLE IF EXISTS order_items;

CREATE TABLE order_items (
    order_item_id  BIGINT,
    order_id       BIGINT,
    customer_id    BIGINT,
    quantity       BIGINT,
    sku_id         BIGINT
);

ALTER TABLE order_items ADD CONSTRAINT order_item_pk PRIMARY KEY (order_item_id);
