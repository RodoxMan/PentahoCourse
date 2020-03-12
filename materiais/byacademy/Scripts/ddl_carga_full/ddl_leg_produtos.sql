

CREATE TABLE leg_produtos (
  cdproduto varchar(50) NOT NULL,
  nomeproduto varchar(70) NOT NULL,
  categoriaproduto varchar(50) NOT NULL,
  medidaproduto varchar(10) NOT NULL,
  fornecedorproduto varchar(50) NOT NULL,
  descricaoproduto text NOT NULL,
  qtdestoqueproduto integer NOT NULL,
  precoproduto numeric(10,4) NOT NULL,
  statusProd varchar(100) NOT null,
  CONSTRAINT leg_produtos_pk PRIMARY KEY (cdproduto)
);

-- pizzas
INSERT INTO leg_produtos
(cdproduto,nomeproduto,categoriaproduto,medidaproduto,fornecedorproduto, descricaoproduto,qtdestoqueproduto,precoproduto,statusprod)
VALUES('s24_1937', 'pizza de Milho', 'Pizza Salgada', '45cm','Casa das massas','queijo e milho', 320, 24.50, 'Ativo');

INSERT INTO leg_produtos
(cdproduto,nomeproduto,categoriaproduto,medidaproduto,fornecedorproduto,descricaoproduto,qtdestoqueproduto,precoproduto,statusprod)
VALUES('s24_4278', 'pizza 4 queijos', 'Pizza Salgada', '45cm','Casa das massas','queijo gorgonzola, cheddar, provolone, brie', 45, 48.81, 'Ativo');

INSERT INTO leg_produtos
(cdproduto,nomeproduto,categoriaproduto,medidaproduto,fornecedorproduto,descricaoproduto,qtdestoqueproduto,precoproduto,statusprod)
VALUES('s18_4409', 'pizza calabresa', 'Pizza Salgada', '45cm','Casa das massas','calabresa italiana', 22, 56.50, 'Ativo');

INSERT INTO leg_produtos
(cdproduto,nomeproduto,categoriaproduto,medidaproduto,fornecedorproduto,descricaoproduto,qtdestoqueproduto,precoproduto,statusprod)
VALUES('s10_2016', 'pizza chocolate', 'Pizza Doce', '45cm','Casa das massas','chocolate ao leite', 15, 34.50, 'Ativo');

INSERT INTO leg_produtos
(cdproduto,nomeproduto,categoriaproduto,medidaproduto,fornecedorproduto,descricaoproduto,qtdestoqueproduto,precoproduto,statusprod)
VALUES('s10_9898', 'pizza banana com gemada', 'Pizza Doce', '45cm','Casa das massas','banana (estragou)', 40, 23.50, 'Inativo');


--bebidas

INSERT INTO leg_produtos
(cdproduto,nomeproduto,categoriaproduto,medidaproduto,fornecedorproduto,descricaoproduto,qtdestoqueproduto,precoproduto,statusprod)
VALUES('s72_3212', 'vinho tinto', 'bebidas', '0,5l','Casa dos vinhos','chileno', 12, 78.50, 'ativo');

INSERT INTO leg_produtos
(cdproduto,nomeproduto,categoriaproduto,medidaproduto,fornecedorproduto,descricaoproduto,qtdestoqueproduto,precoproduto,statusprod)
VALUES('s10_1949', 'vinho tinto seco', 'bebidas', '0,6l','Casa dos vinhos (chile)','chileno', 250, 196.50, 'ativo');

INSERT INTO leg_produtos
(cdproduto,nomeproduto,categoriaproduto,medidaproduto,fornecedorproduto,descricaoproduto,qtdestoqueproduto,precoproduto,statusprod)
VALUES('s10_4757', 'guarana', 'bebidas', '2l','wallmart','', 120, 8.50, 'ativo');

INSERT INTO leg_produtos
(cdproduto,nomeproduto,categoriaproduto,medidaproduto,fornecedorproduto,descricaoproduto,qtdestoqueproduto,precoproduto,statusprod)
VALUES('s18_3482', 'aguá sem gás', 'bebidas', '0,5l','wallmart','campo da pedra', 340, 9.50, 'ativo');
