
CREATE TABLE dim_organizacional (
                id_vendedor INT NOT NULL,
                cod_vendedor VARCHAR(50) NOT NULL,
                desc_vendedor VARCHAR(250) NOT NULL,
                cod_gerente VARCHAR(50) NOT NULL,
                desc_gerente VARCHAR(250) NOT NULL,
                cod_diretor VARCHAR(50) NOT NULL,
                desc_diretor VARCHAR(250) NOT NULL,
                versao INT NOT NULL,
                data_inicial DATE NOT NULL,
                data_final DATE NOT NULL,
                PRIMARY KEY (id_vendedor)
);


CREATE TABLE dim_produto (
                id_produto INT NOT NULL,
                cod_produto VARCHAR(50) NOT NULL,
                cod_marca VARCHAR(50) NOT NULL,
                cod_categoria VARCHAR(50) NOT NULL,
                desc_marca VARCHAR(250) NOT NULL,
                desc_categoria VARCHAR(250) NOT NULL,
                desc_produto VARCHAR(250) NOT NULL,
                atr_tamanho VARCHAR(250) NOT NULL,
                atr_sabor VARCHAR(250) NOT NULL,
                PRIMARY KEY (id_produto)
);


CREATE TABLE dim_cliente (
                id_cliente INT NOT NULL,
                cod_cliente VARCHAR(50) NOT NULL,
                desc_cliente VARCHAR(250) NOT NULL,
                cod_cidade VARCHAR(50) NOT NULL,
                desc_cidade VARCHAR(250) NOT NULL,
                cod_estado VARCHAR(50) NOT NULL,
                desc_estado VARCHAR(250) NOT NULL,
                cod_regiao VARCHAR(50) NOT NULL,
                desc_regiao VARCHAR(250) NOT NULL,
                cod_segmento VARCHAR(50) NOT NULL,
                desc_segmento VARCHAR(250) NOT NULL,
                versao INT NOT NULL,
                data_inicial DATE NOT NULL,
                data_final DATE NOT NULL,
                PRIMARY KEY (id_cliente)
);

ALTER TABLE dim_cliente COMMENT 'Tabela da dimensão cliente';


CREATE TABLE dim_tempo (
                id_tempo INT AUTO_INCREMENT NOT NULL,
                cod_tempo VARCHAR(50) NOT NULL,
                data DATE NOT NULL,
                numero_dia_semana VARCHAR(50) NOT NULL,
                numero_mes VARCHAR(50) NOT NULL,
                numero_ano VARCHAR(50) NOT NULL,
                nome_mes VARCHAR(250) NOT NULL,
                numero_trimestre VARCHAR(50) NOT NULL,
                nome_trimestre VARCHAR(250) NOT NULL,
                numero_semestre VARCHAR(50) NOT NULL,
                nome_semestre VARCHAR(250) NOT NULL,
                PRIMARY KEY (id_tempo)
);


CREATE TABLE dim_fabrica (
                id_fabrica INT AUTO_INCREMENT NOT NULL,
                cod_fabrica VARCHAR(50) NOT NULL,
                desc_fabrica VARCHAR(250) NOT NULL,
                PRIMARY KEY (id_fabrica)
);

ALTER TABLE dim_fabrica COMMENT 'Tabela de dimensão Fábrica';


CREATE TABLE fato_presidencia (
                id_tempo INT NOT NULL,
                id_fabrica INT NOT NULL,
                id_vendedor INT NOT NULL,
                id_cliente INT NOT NULL,
                id_produto INT NOT NULL,
                faturamento DOUBLE PRECISION NOT NULL,
                unidade_vendida DOUBLE PRECISION NOT NULL,
                quantidade_vendida DOUBLE PRECISION NOT NULL,
                imposto DOUBLE PRECISION NOT NULL,
                custo_variavel DOUBLE PRECISION NOT NULL,
                custo_frete DOUBLE PRECISION NOT NULL,
                custo_fixo DOUBLE PRECISION NOT NULL,
                meta_faturamento DOUBLE PRECISION NOT NULL,
                meta_custo DOUBLE PRECISION NOT NULL,
                PRIMARY KEY (id_tempo, id_fabrica, id_vendedor, id_cliente, id_produto)
);


ALTER TABLE fato_presidencia ADD CONSTRAINT dim_organizacional_fato_presidencia_fk
FOREIGN KEY (id_vendedor)
REFERENCES dim_organizacional (id_vendedor)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE fato_presidencia ADD CONSTRAINT produto_fato_presidencia_fk
FOREIGN KEY (id_produto)
REFERENCES dim_produto (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE fato_presidencia ADD CONSTRAINT cliente_fato_presidencia_fk
FOREIGN KEY (id_cliente)
REFERENCES dim_cliente (id_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE fato_presidencia ADD CONSTRAINT tempo_fato_presidencia_fk
FOREIGN KEY (id_tempo)
REFERENCES dim_tempo (id_tempo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE fato_presidencia ADD CONSTRAINT dim_fabrica_fato_presidencia_fk
FOREIGN KEY (id_fabrica)
REFERENCES dim_fabrica (id_fabrica)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
