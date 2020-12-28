CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."invoices"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "id2" serial NOT NULL, "value" timestamptz NOT NULL, "photo" text NOT NULL, "term" integer NOT NULL, PRIMARY KEY ("id") );
