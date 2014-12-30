

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


--
-- container table
--
DROP TABLE IF EXISTS containers;

CREATE TABLE containers (
    container_id  BIGINT,
    order_id      BIGINT,
    tag_id        VARCHAR
);

ALTER TABLE containers ADD CONSTRAINT container_id_pk PRIMARY KEY (container_id);


--
-- container table
--
DROP TABLE IF EXISTS container_picks;

CREATE TABLE container_picks (
    container_pick_id  BIGINT,
    container_id       BIGINT,
    pick_id            BIGINT
);

ALTER TABLE container_picks ADD CONSTRAINT container_pick_id_pk PRIMARY KEY (container_pick_id);
