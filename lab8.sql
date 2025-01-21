-- atv1 --
-- questao1 -- 
select nome,descricao 
from produto
where nome LIKE '%rama';

-- questao2--
select nome,descricao 
from produto
where nome LIKE '%lego%';


-- questao3--
select nome,descricao 
from produto
where descricao not LIKE '%lego%'
order by nome; 

-- questao4--
select nome, telefone
from cliente
where telefone LIKE '%-9%';

-- atv2--
-- quest1 --
select id_fornecedor, nome as forn_nome, cidade as forn_cidade
from fornecedor;

-- quest2--
select id_produto, preco, (preco*0.9) as preco_promo
from produto;

-- atv3--
--quest1 --
select sum(quantidade) as total
from itemdopedido;

-- quest 2--
select sum(quantidade) as total
from itemdopedido
where id_produto in (301);

-- quest3--
select max(preco) as preco_max
from produto
where preco <= 10;

