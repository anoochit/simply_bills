BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "invoice_item" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "invoice_item" (
    "id" bigserial PRIMARY KEY,
    "productId" bigint NOT NULL,
    "quantity" double precision NOT NULL,
    "unitPrice" double precision NOT NULL,
    "total" double precision NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "invoice_item"
    ADD CONSTRAINT "invoice_item_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "product"("id")
    ON DELETE SET NULL
    ON UPDATE SET NULL;


--
-- MIGRATION VERSION FOR simply_bills
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('simply_bills', '20240820095637414', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240820095637414', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
