DROP TABLE IF EXISTS product CASCADE;
DROP SEQUENCE IF EXISTS global_sec;

CREATE SEQUENCE global_seq START WITH 1;


CREATE TABLE product(
                        id          INTEGER primary key DEFAULT nextval('global_seq'),
                        purchase_code VARCHAR NOT NULL,
                        last_name     VARCHAR NOT NULL,
                        first_name    VARCHAR NOT NULL,
                        patronymic    VARCHAR NOT NULL,
                        phone_number  VARCHAR NOT NULL,
                        postal_code   VARCHAR NOT NULL,
                        country       VARCHAR NOT NULL,
                        city          VARCHAR NOT NULL,
                        area          VARCHAR NOT NULL,
                        address       VARCHAR NOT NULL,
                        credit        BOOLEAN NOT NULL
);