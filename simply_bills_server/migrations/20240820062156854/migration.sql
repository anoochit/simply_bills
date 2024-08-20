BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "user_address" DROP CONSTRAINT "user_address_fk_2";
ALTER TABLE "user_address" DROP CONSTRAINT "user_address_fk_3";
ALTER TABLE "user_address" DROP COLUMN "_addressOwnersAddressId";
ALTER TABLE "user_address" DROP COLUMN "_userDataAddressUserDataId";

--
-- MIGRATION VERSION FOR simply_bills
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('simply_bills', '20240820062156854', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240820062156854', "timestamp" = now();

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
