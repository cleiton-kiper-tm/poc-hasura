CREATE EXTENSION "uuid-ossp";

CREATE TYPE financial_entry_type AS ENUM ('DEPOSIT', 'WITHDRAWAL');

CREATE TABLE public.financial_entry (
	id uuid NOT NULL DEFAULT uuid_generate_v4(),
  arrangement_id uuid NOT NULL,
  seller_id uuid NOT NULL,
	entry_type financial_entry_type NOT NULL,
  amount integer NOT NULL,
	CONSTRAINT financial_entry_pk PRIMARY KEY (id)
);

INSERT INTO public.financial_entry (arrangement_id, seller_id, entry_type, amount) VALUES
  ('1a06121b-340c-4209-bf77-9261d16ba186', '707880d9-9447-4be5-b8e0-4e903ee7b8e0', 'DEPOSIT', 5000),
  ('1a06121b-340c-4209-bf77-9261d16ba186', '707880d9-9447-4be5-b8e0-4e903ee7b8e0', 'WITHDRAWAL', 2000),
  ('1a06121b-340c-4209-bf77-9261d16ba186', '707880d9-9447-4be5-b8e0-4e903ee7b8e0', 'DEPOSIT', 500),
  ('1a06121b-340c-4209-bf77-9261d16ba186', '707880d9-9447-4be5-b8e0-4e903ee7b8e0', 'WITHDRAWAL', 1200),
  ('1a06121b-340c-4209-bf77-9261d16ba186', '707880d9-9447-4be5-b8e0-4e903ee7b8e0', 'DEPOSIT', 138),
  ('1a06121b-340c-4209-bf77-9261d16ba186', '707880d9-9447-4be5-b8e0-4e903ee7b8e0', 'DEPOSIT', 983)


INSERT INTO public.financial_entry (arrangement_id, seller_id, entry_type, amount) VALUES
  ('ae2cdb48-b071-4f1e-bece-74b2e60fde3c', '8c767d27-6199-489d-b56e-e82c01312d67', 'DEPOSIT', 2000),
  ('ae2cdb48-b071-4f1e-bece-74b2e60fde3c', '8c767d27-6199-489d-b56e-e82c01312d67', 'WITHDRAWAL', 1950),
  ('ae2cdb48-b071-4f1e-bece-74b2e60fde3c', '8c767d27-6199-489d-b56e-e82c01312d67', 'DEPOSIT', 5000),
  ('ae2cdb48-b071-4f1e-bece-74b2e60fde3c', '8c767d27-6199-489d-b56e-e82c01312d67', 'WITHDRAWAL', 234),
  ('ae2cdb48-b071-4f1e-bece-74b2e60fde3c', '8c767d27-6199-489d-b56e-e82c01312d67', 'DEPOSIT', 690),
  ('ae2cdb48-b071-4f1e-bece-74b2e60fde3c', '8c767d27-6199-489d-b56e-e82c01312d67', 'WITHDRAWAL', 2200),
  ('ae2cdb48-b071-4f1e-bece-74b2e60fde3c', '8c767d27-6199-489d-b56e-e82c01312d67', 'WITHDRAWAL', 427)