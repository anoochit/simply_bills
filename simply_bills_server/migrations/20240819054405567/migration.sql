BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "bill" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "bill" (
    "id" bigserial PRIMARY KEY,
    "referenceNo" text NOT NULL,
    "billToId" bigint NOT NULL,
    "billAddressId" bigint NOT NULL,
    "items" json,
    "total" double precision NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "billCreatedById" bigint NOT NULL,
    "status" text NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "bill"
    ADD CONSTRAINT "bill_fk_0"
    FOREIGN KEY("billToId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE SET NULL;
ALTER TABLE ONLY "bill"
    ADD CONSTRAINT "bill_fk_1"
    FOREIGN KEY("billAddressId")
    REFERENCES "address"("id")
    ON DELETE NO ACTION
    ON UPDATE SET NULL;
ALTER TABLE ONLY "bill"
    ADD CONSTRAINT "bill_fk_2"
    FOREIGN KEY("billCreatedById")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE SET NULL;


--
-- MIGRATION VERSION FOR simply_bills
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('simply_bills', '20240819054405567', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240819054405567', "timestamp" = now();

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
