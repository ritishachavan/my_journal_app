BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "journal_entries" (
    "id" bigserial PRIMARY KEY,
    "userInfoId" bigint NOT NULL,
    "title" text NOT NULL,
    "content" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_info" (
    "id" bigserial PRIMARY KEY,
    "email" text,
    "phoneNumber" text,
    "passwordHash" text NOT NULL,
    "uniqueString" text NOT NULL,
    "isVerified" boolean NOT NULL,
    "otpCode" text,
    "otpExpiry" timestamp without time zone
);


--
-- MIGRATION VERSION FOR my_journal_app
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('my_journal_app', '20260626084957644', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260626084957644', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260129180959368', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129180959368', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_idp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_idp', '20260213194423028', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260213194423028', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_core
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_core', '20260129181112269', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129181112269', "timestamp" = now();


COMMIT;
