
create table DetalhesDeVendas(
	cod_relatorio int not null,
    cod_prod int not null,
    quantidade int not null,
		constraint pk_detalhes_vendas primary key(cod_relatorio, cod_prod),
        constraint fk_detalhes_vendas foreign key(cod_relatorio)
			references Vendas (cod_relatorio)
            on update cascade on delete cascade,
         constraint fk_detalhes_produto foreign key(cod_prod)
			references Produto(cod_prod)
            on update cascade on delete cascade
 );           
show tables;





alter table produto
add unidade_medida varchar(15) not null;

desc produto;

alter table produto
drop unidade_medida;

alter table produto
modify nome_prod varchar(30) not null;

desc produto;

alter table produto 
modify preco_unitario numeric(4,2) null;

desc produto;

alter table produto 
modify preco_unitario float not null;



insert into produto
values
(1, "abóbua", 20.0),
(2,"cáninha", 30.0),
(3, "colocou abóbua?", 25.0);

desc produto;

show tables;


