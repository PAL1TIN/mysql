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


 select nome, num_pedido
 from cliente c, pedido p
 where c.id_cliente = p.id_cliente
 order by nome;


 -- q2 -- 
 select nome, num_pedido, sum(preco*quantidade) as total_pedido
 from cliente c, pedido p, itemdopedido i
 where c.id_cliente = p.id_cliente and p.num_pedido = i.num_pedido
 group by nome, num_pedido
 order by nome, num_pedido;
  
   -- q3 -- 
 select id_cliente, data
 from pedido p inner join itempedido i on i.num_pedido = p.num_pedido
 where id_produto = 301
 order by data;
 
  -- q4 --
  
  
 
-- q5 -- 
select nome, sum(preco*quantidade) as preco_total
from cliente c, pedido p, itemdopedido i
where c.id_cliente = p.id_cliente and p.num_pedido = i.num_pedido
group by nome
having sum(preco*quantidade) >= 1000
order by nome;
  
  
  
  