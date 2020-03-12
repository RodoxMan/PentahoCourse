truncate table st_vendas;

insert into st_vendas
			select 
				leg_pedidos.datapedido,
				leg_pedidos.numeropedido,
				leg_itenspedido.codigoproduto,
				leg_pedidos.numerocliente,
				leg_itenspedido.quantidadepedido,
				leg_itenspedido.precounitario,
				leg_pedidos.statuspedido,
				current_date
			from 
			leg_pedidos, leg_itenspedido
			where leg_pedidos.numeropedido = leg_itenspedido.numeropedido ;
			
			
select * from st_vendas;
