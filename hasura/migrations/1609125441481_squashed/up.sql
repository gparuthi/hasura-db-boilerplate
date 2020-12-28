
CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."invoices"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "value" integer NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "id2" serial NOT NULL, "date" date NOT NULL DEFAULT now(), "photo" text, "term" integer NOT NULL, PRIMARY KEY ("id") );
