----- Recuperação com SELECT simples
select * from cliente;
select * from pedido;
select * from produto;
select * from produtoByPedido;

----- Filtros com Where Statement
select idCliente as ID, Fnome as Nome, Lnome as Sobrenome, endereco as Logradouro from cliente where (DataNasc>(1999-01-01));
select idPedido from pedido where statusPedido like '%Cancelado%';
select * from produto where not valor< 100;
select idPedido, quantidade from produtoByPedido where (quantidade <> 0) and (quantidade < 100);

----- Expressões para gerar atributo derivado
select idCliente as ID, concat(Fnome, ' ',Mnome,' ',Lnome) as Nome_completo, CPF, TIMESTAMPDIFF(YEAR,DataNasc,CURDATE()) as Idade from cliente;

----- Ordernação com order by
select idCliente as ID, concat(Fnome, ' ',Mnome,' ',Lnome) as Nome_completo, CPF, TIMESTAMPDIFF(YEAR,DataNasc,CURDATE()) as Idade from cliente order by Idade desc;

----- Condição para grupo usando HAVING
select a.idPedido, b.idProduto, b.quantidade, c.descricao, c.valor from pedido a, ProdutoByPedido b, produto c group by a.idPedido and c.descricao having (b.quantidade) > 10 order by idPedido;

----- JOIN enre tabelas
select f.idFornecedor, f.RazaoSocial, x.idProduto, p.descricao 
from fornecedor as f
join ProdutoFornecedor as x on f.idFornecedor=x.idFornecedor
join produto as p on x.idProduto=p.idProduto
order by idProduto;