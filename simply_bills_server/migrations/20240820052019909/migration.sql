BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "user_data" ADD COLUMN "_addressOwnerAddressId" bigint;
ALTER TABLE ONLY "user_data"
    ADD CONSTRAINT "user_data_fk_1"
    FOREIGN KEY("_addressOwnerAddressId")
    REFERENCES "address"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR simply_bills
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('simply_bills', '20240820052019909', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240820052019909', "timestamp" = now();

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
