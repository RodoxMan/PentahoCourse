
INSERT INTO dim_cliente
  SELECT
     nextval('dim_cliente_id_seq') as sk_cliente,
     cd_cliente,
     nome_cliente,
     email_cliente,
     current_date as data_carga
  FROM
    st_clientes;

 select * from dim_cliente;

