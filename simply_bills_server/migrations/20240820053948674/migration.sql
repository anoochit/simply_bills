BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "address" DROP CONSTRAINT "address_fk_0";
ALTER TABLE "address" DROP COLUMN "_userDataAddressUserDataId";
--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_address" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "addressId" bigint NOT NULL,
    "_addressOwnersAddressId" bigint,
    "_userDataAddressUserDataId" bigint
);

--
-- ACTION ALTER TABLE
--
DROP INDEX "user_library_unique_idx";
ALTER TABLE "user_data" DROP CONSTRAINT "user_data_fk_1";
ALTER TABLE "user_data" DROP COLUMN "_addressOwnerAddressId";
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user_address"
    ADD CONSTRAINT "user_address_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user_data"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_address"
    ADD CONSTRAINT "user_address_fk_1"
    FOREIGN KEY("addressId")
    REFERENCES "address"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_address"
    ADD CONSTRAINT "user_address_fk_2"
    FOREIGN KEY("_addressOwnersAddressId")
    REFERENCES "address"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_address"
    ADD CONSTRAINT "user_address_fk_3"
    FOREIGN KEY("_userDataAddressUserDataId")
    REFERENCES "user_data"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR simply_bills
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('simply_bills', '20240820053948674', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240820053948674', "timestamp" = now();

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
