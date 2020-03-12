
--drop table leg_clientes;

-- tabela exemplo legado
CREATE TABLE leg_clientes (     -- ou create table nome_tabela
	cdcli int4 NOT NULL,
	nomecli varchar(100) NOT NULL,
	emailcli varchar(100) NOT NULL,
	CONSTRAINT leg_clientes_pk PRIMARY KEY (cdcli)
);


-- insert dados ficticios no lagado
INSERT INTO leg_clientes (cdcli, nomecli, emailcli) VALUES(128, 'piton', 'suporte@raizzer.com');
INSERT INTO leg_clientes (cdcli, nomecli, emailcli) VALUES(2001, 'doriva', 'doriva@doriva.com');
INSERT INTO leg_clientes (cdcli, nomecli, emailcli) VALUES(3001, 'rigo', 'rigo@rigonis.com');
INSERT INTO leg_clientes (cdcli, nomecli, emailcli) VALUES(4001, 'rob', 'rob@robhud.com');

--validar insert no legado
select* from leg_clientes;
