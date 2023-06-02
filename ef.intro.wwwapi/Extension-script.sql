﻿CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);

START TRANSACTION;

CREATE TABLE "Authors" (
    "Id" integer GENERATED BY DEFAULT AS IDENTITY,
    "FirstName" text NULL,
    "LastName" text NULL,
    "Email" text NULL,
    CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
);

CREATE TABLE "Books" (
    "Id" integer GENERATED BY DEFAULT AS IDENTITY,
    "Title" text NULL,
    "AuthorId" integer NOT NULL,
    "ReleaseDate" timestamp with time zone NULL,
    CONSTRAINT "PK_Books" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Books_Authors_AuthorId" FOREIGN KEY ("AuthorId") REFERENCES "Authors" ("Id") ON DELETE CASCADE
);

CREATE INDEX "IX_Books_AuthorId" ON "Books" ("AuthorId");

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20230602100320_NewMigration', '7.0.5');

COMMIT;
