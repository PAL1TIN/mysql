-- lab 10--
-- q1 --
select c.nome,p.num_pedido
from cliente c inner join 
pedido p on c.id_cliente = p.id_cliente;

-- q2 --
select c.nome,p.num_pedido
from cliente c left join 
pedido p on c.id_cliente = p.id_cliente;

-- q3 --
select p.nome,i.num_pedido
from produto p left join 
itemdopedido i on p.id_produto = i.id_produto;

-- q4 --
select p.nome,count(i.num_pedido) as pedido
from produto p left join itemdopedido i on p.id_produto = i.id_produto
group by nome
order by pedido desc;

-- q5 --
select f.id_fornecedor,count(p.id_fornecedor) as produto
from produto p right join fornecedor f on p.id_fornecedor = f.id_fornecedor
group by id_fornecedor
order by id_fornecedor;





