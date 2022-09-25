use ecommerce;

insert into cliente (Fnome, Mnome, Lnome, CPF, endereco, datanasc) values
('Fernando','Alonso', 'Fernandes','642.875.620-03','Rua A','1990-05-10'),
('Paulo','Santos','Assumpim','531.885.700-07','Rua A','1980-05-10'),
('Ana','Barbosa','Antunes','358.483.780-45','Rua B','1999-10-10'),
('Paula','Devanisio','Woodeilson','811.418.640-29','Rua C','2000-12-09'),
('Eusebio','Itapera','Eugene','159.004.800-89','Rua D','1908-01-01'),
('João','Marcos','Pontes','997.886.350-83','Rua E','2003-08-08');

insert into pedido (statuspedido, descricao, frete, idCliente) values
('Entregue','Pacote de lenços',23.10, 1),
('Em andamento','BlueRay parado',33.10, 4),
('Entregue','Disco da Madonna',3.10, 6),
('Em andamento','Envelopes',1.10, 3),
('Em andamento','Selos postais',0.10, 3),
('Cancelado','Cooler',55.10, 2),
('Em andamento','Tijolo diverso',70.11, 1),
('Em andamento','Areia enlatada',233.10, 2),
('Enviado','Itens diversos',23.13, 3),
('Enviado','Uma foto simples',1.10, 4);

insert into produto (categoria, descricao, valor) values
('Eletronico','Echo Dot',200.00),
('Eletronico','Echo Studio',2200.00),
('Eletronico','Echo Show',400.00),
('Eletronico','Echo Converse',890.00),
('Eletronico','iPhone da China',200.00),
('Eletronico','iPhone da loja',20000.00),
('Eletronico','Televisor',3900.00),
('Eletronico','Carregador do iPhone',200.00),
('Eletronico','Capinha do iPhone',210.00),
('Eletronico','Notebook',2340.00),
('Brinquedo','Disco de vinyl mortifero',20.00),
('Brinquedo','Max Steal',1.00),
('Utilidade','Kit garfo e faca',50.20);

insert into ProdutoByPedido(idProduto, idPedido, quantidade) values
('10','10',12),
('3','5',9),
('2','10',2),
('1','10',1),
('1','4',120),
('4','8',20),
('6','7',1);

insert into fornecedor (razaoSocial, CNPJ) values
('Marlene e Caleb Pizzaria ME','61.991.785/0001-04'),
('Marli e Lívia Joalheria ME','32.367.165/0001-92'),
('Vitória e Tereza Casa','77.461.070/0001-71'),
('Fernando Pães Ltda','65.393.603/0001-46'),
('Ryan e Henrique Gráfica ME','19.435.586/0001-45');

insert into Produtofornecedor (idFornecedor, idProduto) values
(4,6),
(2,1),
(1,4),
(3,7),
(3,11);

insert into estoque (local) values
('Sumare'),
('Belo Horizonte'),
('Ipatinga'),
('Rio Claro');

insert into produtoEstoque (idProduto, idEstoque, quantidade) values
(3,3,1600),
(6,3,3000),
(1,1,240),
(9,2,678),
(2,3,2098),
(4,3,1),
(5,3,0),
(13,4,390);

insert into terceiroVendedor (razaoSocial, local, CNPJ, endereco) values
('Eletronicos da maça','Centro industrial Campinas','40.858.486/0001-18','Rua Antônio José de Ávila'),
('Televisores da Amazonia','Conglomerado Social de Tecnologia','75.716.830/0001-19','Rua Thomas Nilsen Júnior'),
('Isaac e Evelyn Telas ME','Laguna Seca','84.364.392/0001-68','Rua Amina Hamad Giacovoni'),
('Comerio dos Irmãos Talheres','TechTown Hortolandia','57.967.708/0001-33','Rua Abílio Silveira');

insert into ProdutoTerceiro (idTerceiroVendedor, idProduto, quantidade) values
(4,6,200),
(4,10,1000),
(1,3,643),
(3,5,20),
(3,9,99),
(2,13,102);