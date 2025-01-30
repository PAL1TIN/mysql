-- lab12 --

-- q1 --
select cliente.id_cliente, nome
from cliente join pedido ON cliente.id_cliente = pedido.id_cliente
where pedido.num_pedido in (select num_pedido from itemdopedido where preco >=10);

-- q2 --
select id_cliente, data
from pedido
where num_pedido in (select num_pedido from itemdopedido where id_produto = 301) 
order by data;

-- q3 --

select c.email
from cliente c join pedido p on c.id_cliente = p.id_cliente
where num_pedido in (select num_pedido from itemdopedido where id_produto = 301)


-- q4 --
select id_cliente
 select( sum(quantidade * preco) as total_pedido