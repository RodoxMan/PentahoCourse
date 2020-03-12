create table st_vendas
(
	dt_venda date,
	cd_venda integer,
	cd_produto varchar(255),
    cd_cliente varchar(255),
	qtd_venda integer,
	vl_venda numeric(12,4),
	status_venda varchar(60),
	dt_carga timestamp not null
);
