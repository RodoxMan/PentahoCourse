--drop sequence dim_cliente_id_seq cascade;
--drop table dim_cliente cascade;

CREATE SEQUENCE dim_cliente_id_seq
INCREMENT BY 1
MINVALUE 1
MAXVALUE 999999
START 200;

CREATE TABLE dim_cliente (
  sk_cliente integer primary key NOT NULL DEFAULT nextval('dim_cliente_id_seq'), --CHAVE ARTIFICIAL AUTO-INCREMENTAL. PRIMARY KEY.
	nk_cliente varchar (100) not null,
	nm_cliente varchar (100) not null,
	nm_email   varchar (100) not null,
  dt_carga timestamp not null
 );
