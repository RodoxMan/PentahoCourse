create table fato_venda(
                sk_tempo integer not null,
                sk_cliente integer not null,
				sk_produto integer not null,
                qtd_venda integer not null,
                vl_venda_uni numeric(12,4) not null,
                vl_venda_total numeric(12,2) not null,
                dt_carga timestamp NOT NULL,
                CONSTRAINT fato_venda_dim_cliente_fk FOREIGN KEY (sk_cliente) REFERENCES dim_cliente(sk_cliente),
                CONSTRAINT fato_venda_dim_produto_fk FOREIGN KEY (sk_produto) REFERENCES dim_produto(sk_produto),
                CONSTRAINT fato_venda_dim_tempo_fk FOREIGN KEY (sk_tempo) REFERENCES dim_tempo(sk_tempo)

);
