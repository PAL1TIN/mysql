-- lab11 --
-- q1 --
update voo
set num_voo = 401
where num_voo = 4011;
update voo
set num_voo = 301
where num_voo = 3010;

-- q2 --
select id_aviao
from aviao
join marca on aviao.marca = marca.marca
where autonomia > 7500;

-- q3 --
SELECT DISTINCT voo.nome_piloto
FROM voo
JOIN aviao ON voo.id_aviao = aviao.id_aviao
JOIN piloto ON voo.nome_piloto = piloto.nome_piloto
WHERE aviao.marca LIKE 'Boeing 737%';

-- q4 --

SELECT piloto.nome_piloto
FROM piloto
JOIN voo ON piloto.nome_piloto = voo.nome_piloto
JOIN aviao ON voo.id_aviao = aviao.id_aviao
JOIN marca ON aviao.marca = marca.marca
GROUP BY piloto.nome_piloto
HAVING COUNT(DISTINCT marca.marca) = (SELECT COUNT(*) FROM marca);

-- q5 --
select voo.id_aviao, voo.origem, voo.data, count(*) as qtd_passagens
from voo
group by voo.id_aviao, voo.origem, voo.data
having count(*) > 1;

-- q6 --
select count(marca.marca) as qtd_marcas
from marca;

-- q7 --
select marca.marca 
from voo
join aviao ON voo.id_aviao = aviao.id_aviao
join marca ON aviao.marca = marca.marca
where voo.origem = 'SDU';

-- q8 -- 
SELECT DISTINCT piloto.nome_piloto
FROM piloto
JOIN voo ON piloto.nome_piloto = voo.nome_piloto
JOIN aviao ON voo.id_aviao = aviao.id_aviao
WHERE aviao.nome = 'PPT-AS';

-- q9 -- 
SELECT DISTINCT voo.origem
FROM voo
JOIN aviao ON voo.id_aviao = aviao.id_aviao
JOIN marca ON aviao.marca = marca.marca
WHERE marca.marca IN ('BOEING 737-300', 'BOEING 737-500', 'BOEING 737-200');
