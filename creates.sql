CREATE DATABASE	pedido_compra

USE pedido_compra

CREATE TABLE cliente (	id_clie		int			not null PRIMARY KEY,
						nm_clie		varchar(60)	not null,
						doc_clie	varchar(15) not null,
						dtnas_clie	date);

CREATE TABLE pagamento (	id_pgto		int	not null	PRIMARY KEY,
							dsc_pgto	varchar(30));

CREATE TABLE produto	(	id_prod		int	not null	PRIMARY KEY,
							dsc_prod	varchar(40) not null,
							vl_prod		numeric(9,2));

CREATE TABLE pedido	(	id_ped	int	not null PRIMARY KEY,
						id_pgto	int	not null FOREIGN KEY REFERENCES pagamento(id_pgto),
						id_clie int not null FOREIGN KEY REFERENCES cliente(id_clie),
						dt_ped	date,
						tot_ped	numeric(10,2));

CREATE TABLE item_pedido (	id_ped			int not null FOREIGN KEY REFERENCES pedido(id_ped),
							id_prod			int not null FOREIGN KEY REFERENCES produto(id_prod),
							qtd_item_ped	numeric(7,2),
							vl_item_ped		numeric(9,2));
