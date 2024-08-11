BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "address" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "address" (
    "id" bigserial PRIMARY KEY,
    "uid" text NOT NULL,
    "address" text NOT NULL,
    "address2" text NOT NULL,
    "_userAddressUserId" bigint
);

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
    "items" json,
    "total" double precision NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "billCreatedById" bigint NOT NULL,
    "status" text NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "event" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "event" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "startDate" timestamp without time zone NOT NULL,
    "endDate" timestamp without time zone NOT NULL,
    "authorId" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "publish" boolean NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "faq" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "faq" (
    "id" bigserial PRIMARY KEY,
    "question" text NOT NULL,
    "answer" text NOT NULL,
    "type" text NOT NULL,
    "authorId" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "publish" boolean NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "post" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "authorId" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "publish" boolean NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "address"
    ADD CONSTRAINT "address_fk_0"
    FOREIGN KEY("_userAddressUserId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

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
    FOREIGN KEY("billCreatedById")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE SET NULL;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "event"
    ADD CONSTRAINT "event_fk_0"
    FOREIGN KEY("authorId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE SET NULL;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "faq"
    ADD CONSTRAINT "faq_fk_0"
    FOREIGN KEY("authorId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE SET NULL;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "post"
    ADD CONSTRAINT "post_fk_0"
    FOREIGN KEY("authorId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE SET NULL;


--
-- MIGRATION VERSION FOR simply_bills
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('simply_bills', '20240811015757678', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240811015757678', "timestamp" = now();

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
