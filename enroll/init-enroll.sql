CREATE EXTENSION "uuid-ossp";

CREATE TABLE public.regional (
	id uuid NOT NULL DEFAULT uuid_generate_v4(),
	code varchar NOT NULL,
	CONSTRAINT regional_pk PRIMARY KEY (id)
);

CREATE TABLE public.arrangement (
	id uuid NOT NULL DEFAULT uuid_generate_v4(),
	"name" varchar NOT NULL,
	CONSTRAINT arrangement_pk PRIMARY KEY (id)
);

CREATE TABLE public.customer (
	id uuid NOT NULL DEFAULT uuid_generate_v4(),
	"name" varchar NOT NULL,
	CONSTRAINT customer_pk PRIMARY KEY (id)
);

CREATE TABLE public.arrangement_seller (
	id uuid NOT NULL DEFAULT uuid_generate_v4(),
	arrangement_id uuid NOT NULL,
	customer_id uuid NOT NULL,
	regional_id uuid NOT NULL,
	CONSTRAINT arrangement_seller_pk PRIMARY KEY (id),
	CONSTRAINT arrangement_seller_fk FOREIGN KEY (regional_id) REFERENCES public.regional(id),
	CONSTRAINT arrangement_seller_fk_1 FOREIGN KEY (arrangement_id) REFERENCES public.arrangement(id),
	CONSTRAINT arrangement_seller_fk_2 FOREIGN KEY (customer_id) REFERENCES public.customer(id)
);

INSERT INTO public.arrangement (id,"name") VALUES
	 ('1a06121b-340c-4209-bf77-9261d16ba186'::uuid,'kiper & Kiper'),
	 ('ae2cdb48-b071-4f1e-bece-74b2e60fde3c'::uuid,'Augusto confeccoes');


INSERT INTO public.regional (code,id) VALUES
	 ('DD','facdef76-1803-4d45-968f-53f4d36fe10a'::uuid),
	 ('RO','86e3f890-c506-48d2-87a8-af7f204baeb6'::uuid),
	 ('TE','5e2ee9c2-bccd-4991-a39c-dc36955d577e'::uuid);


INSERT INTO public.customer (id,"name") VALUES
	 ('707880d9-9447-4be5-b8e0-4e903ee7b8e0'::uuid,'kiper & Kiper'),
	 ('8c767d27-6199-489d-b56e-e82c01312d67'::uuid,'Souza e Silva'),
	 ('e04c6593-1912-455f-b819-2c5fba825123'::uuid,'J.M Martins');



INSERT INTO public.arrangement_seller (id,arrangement_id,customer_id,regional_id) VALUES
	 ('2f174055-4c48-48fc-af3b-7b83234ac53b'::uuid,'1a06121b-340c-4209-bf77-9261d16ba186'::uuid,'707880d9-9447-4be5-b8e0-4e903ee7b8e0'::uuid,'facdef76-1803-4d45-968f-53f4d36fe10a'::uuid),
	 ('feebe01b-ecf0-4360-81a0-79ca25e86645'::uuid,'ae2cdb48-b071-4f1e-bece-74b2e60fde3c'::uuid,'8c767d27-6199-489d-b56e-e82c01312d67'::uuid,'86e3f890-c506-48d2-87a8-af7f204baeb6'::uuid),
	 ('52206ad7-4046-4846-b74e-52b815fbf35e'::uuid,'ae2cdb48-b071-4f1e-bece-74b2e60fde3c'::uuid,'e04c6593-1912-455f-b819-2c5fba825123'::uuid,'86e3f890-c506-48d2-87a8-af7f204baeb6'::uuid);