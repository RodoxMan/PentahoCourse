--drop table leg_pedidos;

create table leg_pedidos (
  numeropedido integer not null,
  datapedido timestamp not null,
  datapagamentopedido timestamp default null ,
  dataentregapedido timestamp default null,
  statuspedido varchar(100) not null,
  comentarios text,
  numerocliente integer not null,
  primary key (numeropedido)
);

insert into leg_pedidos
(numeropedido, datapedido, datapagamentopedido, dataentregapedido, statuspedido, comentarios, numerocliente)
values(10100, '2017-01-06 00:00:00.000', '2017-01-06 00:00:00.000', null, 'aguardando pagamento', null, 363);
insert into leg_pedidos
(numeropedido, datapedido, datapagamentopedido, dataentregapedido, statuspedido, comentarios, numerocliente)
values(10101, '2017-01-09 00:00:00.000', '2017-01-18 00:00:00.000', '2017-01-11 00:00:00.000', 'pago', 'passou em 2 cartões', 128);
insert into leg_pedidos
(numeropedido, datapedido, datapagamentopedido, dataentregapedido, statuspedido, comentarios, numerocliente)
values(10102, '2017-01-10 00:00:00.000', '2017-01-18 00:00:00.000', '2017-01-20 00:00:00.000', 'pago', null, 181);
insert into leg_pedidos
(numeropedido, datapedido, datapagamentopedido, dataentregapedido, statuspedido, comentarios, numerocliente)
values(10103, '2017-01-29 00:00:00.000', '2017-02-07 00:00:00.000', '2017-02-02 00:00:00.000', 'pedido enviado', null, 121);
insert into leg_pedidos
(numeropedido, datapedido, datapagamentopedido, dataentregapedido, statuspedido, comentarios, numerocliente)
values(10104, '2017-01-31 00:00:00.000', '2017-02-09 00:00:00.000', '2017-02-01 00:00:00.000', 'pedido enviado', null, 141);
insert into leg_pedidos
(numeropedido, datapedido, datapagamentopedido, dataentregapedido, statuspedido, comentarios, numerocliente)
values(10105, '2017-02-11 00:00:00.000', '2017-02-21 00:00:00.000', '2017-02-12 00:00:00.000', 'entregue', null, 145);
insert into leg_pedidos
(numeropedido, datapedido, datapagamentopedido, dataentregapedido, statuspedido, comentarios, numerocliente)
values(10106, '2017-02-17 00:00:00.000', '2017-02-24 00:00:00.000', '2017-02-21 00:00:00.000', 'entregue', null, 278);
insert into leg_pedidos
(numeropedido, datapedido, datapagamentopedido, dataentregapedido, statuspedido, comentarios, numerocliente)
values(10107, '2017-02-24 00:00:00.000', '2017-03-03 00:00:00.000', '2017-02-26 00:00:00.000', 'entregue', 'endereço errado', 131);
insert into leg_pedidos
(numeropedido, datapedido, datapagamentopedido, dataentregapedido, statuspedido, comentarios, numerocliente)
values(10108, '2017-03-03 00:00:00.000', '2017-03-12 00:00:00.000', '2017-03-08 00:00:00.000', 'entregue', null, 385);


select * from leg_pedidos;
