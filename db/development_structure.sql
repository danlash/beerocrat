CREATE TABLE "beers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "brewery" varchar(255), "origin" varchar(255), "picture" varchar(255), "website" varchar(255), "date_tapped" date, "date_emptied" date, "alcohol" integer, "requested_by" varchar(255), "emptied_by" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20110223025107');

INSERT INTO schema_migrations (version) VALUES ('20110401025107');