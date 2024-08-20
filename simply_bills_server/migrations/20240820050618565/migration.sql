BEGIN;


--
-- MIGRATION VERSION FOR simply_bills
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('simply_bills', '20240820050618565', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240820050618565', "timestamp" = now();

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
