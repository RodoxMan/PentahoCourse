-- antes de inserir deve zerar a tabela de STAGE
truncate table st_clientes; -- stage é sempre limpa! trunca a tabela antes de carregar ela. Sempre!

-- Insert na STAGE
-- exemplo de um insert na stage(na unha).
INSERT INTO st_clientes
			SELECT 	cdcli, 
					nomecli, 
					emailcli, 
					current_date
			FROM leg_clientes;


-- valida carga
select* from st_clientes;
