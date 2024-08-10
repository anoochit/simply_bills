BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "event" DROP CONSTRAINT "event_fk_0";
ALTER TABLE ONLY "event"
    ADD CONSTRAINT "event_fk_0"
    FOREIGN KEY("createdById")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE SET NULL;
--
-- ACTION CREATE TABLE
--
CREATE TABLE "faq" (
    "id" bigserial PRIMARY KEY,
    "question" text NOT NULL,
    "answer" text NOT NULL,
    "type" text NOT NULL,
    "createdById" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "publish" boolean NOT NULL
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "user" DROP COLUMN "scope";
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "faq"
    ADD CONSTRAINT "faq_fk_0"
    FOREIGN KEY("createdById")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE SET NULL;


--
-- MIGRATION VERSION FOR simply_bills
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('simply_bills', '20240810144906049', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240810144906049', "timestamp" = now();

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
