-- atv 1 --
-- quest1 --
select num_pedido, count(num_pedido) as linhas_pedidos
from itemdopedido
group by num_pedido;


-- quest2 --

select num_pedido,min(preco) as custo_min 
from itemdopedido
group by num_pedido
order by custo_min ;

    -- q3 --
  select num_pedido
from itemdopedido
group by num_pedido
having sum(quantidade) >= 100;

-- q4 --
select num_pedido
from itemdopedido
group by num_pedido
having sum(quantidade * preco) >= 1000;

-- atv 2 --
-- q1 --
  select cliente.nome, pedido.num_pedido
from cliente, pedido
where cliente.id_cliente = pedido.id_cliente;

 -- q2 --
 
  
  
  
  
  
  