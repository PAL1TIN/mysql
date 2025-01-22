-- laboratorio7 --
-- q1 --
select distinct id_produto
from produto;

-- q2 --
select nome
from cliente
order by nome desc;

-- q3 --	
select id_cliente, num_pedido, data
from pedido
order by data desc , id_cliente asc;

-- q4 --
select quantidade, preco
from itemdopedido
order by quantidade desc, preco desc;

-- q5 --
select id_produto, nome
from produto
where preco = 9.49;

-- q6 -- 
select id_produto, nome
from produto
where preco >= 9;

-- q7 --
select distinct num_pedido
from itemdopedido
where quantidade >=100;

-- q8 -- 
select nome, preco
from produto
where preco >= 3 and preco <= 6
order by preco;

-- q9 --
select nome
from fornecedor
where estado = "SP";

-- q10 --
select num_pedido, id_produto, quantidade
from itemdopedido
where id_produto in (301, 302, 303) and quantidade > 100
order by num_pedido, id_produto;