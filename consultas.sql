-- consultas--
-- 1
select c.nome, v.modelo, l.data_inicio, l.data_fim
from clientes c inner join locacoes l ON c.id = l.clientes_id inner join veiculos v ON v.id = l.veiculos_id;

-- 2
select status, count(*)as qtd_status
from locacoes
group by status;

-- 3 --
select AVG(valor_diaria) as media_diaria  
from veiculos  
where status = 'Disponivel';

-- 4 --
select f.nome
from funcionarios f inner join locacoes l ON f.id = l.funcionarios_id;

-- 5 --
select c.nome
from pagamentos p inner join locacoes l ON p.locacoes_id = l.id inner join clientes c ON l.clientes_id = c.id;

-- 6 -- 
select c.nome, v.modelo, l.valor_total
from locacoes l inner join clientes c ON l.clientes_id = c.id inner join veiculos v ON l.veiculos_id = v.id
where l.status = 'Ativa';

-- 7 --
select metodo_pagamento,sum(valor) as total
from pagamentos
group by metodo_pagamento;

-- 8 --
select c.nome
from clientes c inner join locacoes l ON c.id = l.clientes_id inner join veiculos v ON v.id = l.veiculos_id
where v.marca = 'Toyota';

-- 9 --
-- sei la como bota if else

-- 10 --
select c.nome, count(l.clientes_id) as qtd_locacoes, avg(l.valor_total) AS gasto_media
from clientes c inner join locacoes l on c.id = l.clientes_id
group by c.nome;