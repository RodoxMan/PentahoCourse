-- antes de inserir deve zerar a tabela de STAGE
truncate table st_produtos; -- stage é sempre limpa! trunca a tabela antes de carregar ela. Sempre!

-- Insert na STAGE
-- exemplo de um insert na stage(na unha).
INSERT INTO st_produtos
			SELECT 	cdproduto, 
					nomeproduto, 
					categoriaproduto, 
					precoproduto,
					statusProd,
					current_date
			FROM leg_produtos;


-- valida carga
select* from st_produtos;
