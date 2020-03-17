
INSERT INTO dim_produto
  SELECT
     nextval('dim_produto_id_seq') as sk_produto,
     cd_produto,
     nome_produto,
     cat_produto,
     preco_produto,
     status_produto,
     current_date as data_carga
  FROM
    st_produtos;
    
 select * from dim_produto;
