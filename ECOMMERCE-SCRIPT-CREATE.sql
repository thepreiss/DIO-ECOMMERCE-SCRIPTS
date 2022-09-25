drop database if exists ecommerce;
create database ecommerce;
use ecommerce;

create table cliente(
idCliente int auto_increment primary key,
Fnome varchar(45) not null,
Mnome varchar(45),
Lnome varchar(45) not null,
CPF varchar(45) not null,
endereco varchar(45),
DataNasc date not null,
constraint unique_cpf_client unique (CPF)
);

create table pedido(
idPedido int auto_increment primary key,
StatusPedido enum('Cancelado','Em andamento','Processando','Enviado','Entregue') not null,
descricao varchar(45),
Frete float default 0,
idCliente int,
constraint fk_pedido_cliente foreign key (idCliente) references cliente(idCliente)
);

create table produto(
idProduto int auto_increment primary key,
categoria varchar(45) not null,
descricao varchar(45),
valor float not null
);

create table ProdutoByPedido(
idProduto int,
idPedido int,
quantidade int not null default 0,
status enum('Disponível','Fora de estoque'),
primary key (idProduto, idPedido),
constraint fk_produto_id foreign key (idProduto) references produto(idProduto),
constraint fk_pedido_id foreign key (idPedido) references pedido(idPedido)
);

create table fornecedor(
idFornecedor int auto_increment not null primary key,
razaoSocial varchar(45) not null,
CNPJ varchar(45) not null unique
);

create table ProdutoFornecedor(
idFornecedor int,
idProduto int,
primary key (idFornecedor, idProduto),
constraint fk_fornecedor_id foreign key (idFornecedor) references fornecedor(idFornecedor),
constraint fk_produtoFornecedor_id foreign key (idProduto) references produto (idProduto)
);

create table estoque(
idEstoque int auto_increment not null primary key,
Local varchar(45)
);

create table ProdutoEstoque(
idProduto int,
idEstoque int,
quantidade int default 0,
primary key (idProduto, idEstoque),
constraint fk_produtoEstoque_id foreign key (idProduto) references produto (idProduto),
constraint fk_estoque_id foreign key (idEstoque) references estoque (idEstoque)
);

create table terceiroVendedor(
idTerceiroVendedor int auto_increment not null primary key,
razaoSocial varchar(45) not null,
local varchar(45),
CNPJ varchar(45) not null unique,
endereco varchar(45) not null
);

create table ProdutoTerceiro(
idTerceiroVendedor int,
idProduto int,
quantidade int not null default 0,
primary key (idTerceiroVendedor, idProduto),
constraint fk_TerceiroVendedor_id foreign key (idTerceiroVendedor) references terceiroVendedor (idTerceiroVendedor),
constraint fk_produtoTerceiro_id foreign key (idProduto) references produto (idProduto)
);