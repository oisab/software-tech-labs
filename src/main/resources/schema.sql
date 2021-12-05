DROP TABLE IF EXISTS product CASCADE;
DROP SEQUENCE IF EXISTS global_sec;

CREATE SEQUENCE global_seq START WITH 1;


CREATE TABLE product(
    id          INTEGER primary key DEFAULT nextval('global_seq'),
    name        VARCHAR         NOT NULL,
    brand       VARCHAR         NOT NULL,
    price       VARCHAR         NOT NULL,
    quantity    VARCHAR         NOT NULL
);