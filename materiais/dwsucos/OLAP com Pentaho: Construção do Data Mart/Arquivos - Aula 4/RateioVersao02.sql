USE dwsucos; 

SELECT x.cod_cliente, x.cod_produto, x.cod_organizacional, x.cod_fabrica, x.cod_tempo, x.faturamento, x.imposto, 
x.custo_variavel, x.unidade_vendida, x.quantidade_vendida, ( x.quantidade_vendida / y.quantdade_vendida_002 ) * y.custo_frete AS frete_rateio, ( x.quantidade_vendida / w.quantdade_vendida_003 ) * w.custo_fixo  AS custo_fixo_rateio, ( x.quantidade_vendida / k.quantdade_vendida_005 ) * k.meta_custo  AS meta_custo_rateio 
		 FROM   fato_001 x 
       INNER JOIN (SELECT a.cod_cliente, 
                          a.cod_produto, 
                          a.cod_fabrica, 
                          a.cod_tempo, 
                          a.custo_frete, 
                          b.quantdade_vendida_002 
                   FROM   fato_002 a 
                          INNER JOIN (SELECT cod_cliente, 
                                             cod_produto, 
                                             cod_fabrica, 
                                             cod_tempo, 
                                             Sum(quantidade_vendida) AS 
                                             quantdade_vendida_002 
                                      FROM   fato_001 
                                      GROUP  BY cod_cliente, 
                                                cod_produto, 
                                                cod_fabrica, 
                                                cod_tempo) b 
                                  ON a.cod_cliente = b.cod_cliente 
                                     AND a.cod_produto = b.cod_produto 
                                     AND a.cod_fabrica = b.cod_fabrica 
                                     AND a.cod_tempo = b.cod_tempo) y 
               ON x.cod_cliente = y.cod_cliente 
                  AND x.cod_produto = y.cod_produto 
                  AND x.cod_fabrica = y.cod_fabrica 
                  AND x.cod_tempo = y.cod_tempo 
       INNER JOIN (SELECT a.cod_fabrica, 
                          a.cod_tempo, 
                          a.custo_fixo, 
                          b.quantdade_vendida_003 
                   FROM   fato_003 a 
                          INNER JOIN (SELECT cod_fabrica, 
                                             cod_tempo, 
                                             Sum(quantidade_vendida) AS 
                                             quantdade_vendida_003 
                                      FROM   fato_001 
                                      GROUP  BY cod_fabrica, 
                                                cod_tempo) b 
                                  ON a.cod_fabrica = b.cod_fabrica 
                                     AND a.cod_tempo = b.cod_tempo) w 
               ON x.cod_fabrica = w.cod_fabrica 
                  AND x.cod_tempo = w.cod_tempo 
       INNER JOIN (SELECT a.cod_produto, 
                          a.cod_fabrica, 
                          a.cod_tempo, 
                          a.meta_custo, 
                          b.quantdade_vendida_005 
                   FROM   fato_005 a 
                          INNER JOIN (SELECT cod_produto, 
                                             cod_fabrica, 
                                             cod_tempo, 
                                             Sum(quantidade_vendida) AS 
                                             quantdade_vendida_005 
                                      FROM   fato_001 
                                      GROUP  BY cod_produto, 
                                                cod_fabrica, 
                                                cod_tempo) b 
                                  ON a.cod_produto = b.cod_produto 
                                     AND a.cod_fabrica = b.cod_fabrica 
                                     AND a.cod_tempo = b.cod_tempo) k 
               ON x.cod_produto = k.cod_produto 
                  AND x.cod_fabrica = k.cod_fabrica 
                  AND x.cod_tempo = k.cod_tempo 
WHERE  Cast(Substring(x.cod_tempo, 1, 4) AS UNSIGNED) >= 2013 
       AND Cast(Substring(x.cod_tempo, 5, 2) AS UNSIGNED) >= 1 
       AND Cast(Substring(x.cod_tempo, 1, 4) AS UNSIGNED) <= 2013 
       AND Cast(Substring(x.cod_tempo, 5, 2) AS UNSIGNED) <= 1 