--drop SEQUENCE dim_produto_id_seq cascade;
--drop table dim_produto cascade;

CREATE SEQUENCE dim_produto_id_seq
INCREMENT BY 1
MINVALUE 1
MAXVALUE 999999
START 200;

CREATE TABLE dim_produto (
    sk_produto integer primary key NOT NULL DEFAULT nextval('dim_produto_id_seq'), --CHAVE ARTIFICIAL AUTO-INCREMENTAL. PRIMARY KEY.
    nk_produto varchar(100) ,
    nm_produto varchar(100) ,
    cat_produto varchar(100) ,
    vl_produto numeric (12,4) ,
    status_produto varchar(50) ,
    dt_carga timestamp not null
  ) ;
