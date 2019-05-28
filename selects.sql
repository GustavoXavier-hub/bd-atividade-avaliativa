select * from cliente order by nm_clie

select * from pagamento order by id_pgto desc

select * from pagamento where id_pgto = 2

select * from cliente where nm_clie like 'M%'

select * from pagamento where dsc_pgto like 'e'

select * from produto where vl_prod > 10.00

select * from pedido where dt_ped between '2018-02-10' and '2019-05-10'

select * from cliente inner join pedido on cliente.id_clie = pedido.id_clie order by nm_clie, id_ped

select id_ped 'Pedido',id_pgto 'Pagamento',id_clie 'Cliente',dt_ped 'Data do Pedido', tot_ped 'Total Pedido' from pedido where id_clie = 2

select * from item_pedido inner join produto on item_pedido.id_prod = produto.id_prod order by dsc_prod

select MIN(tot_ped) 'Menor Pedido' from pedido

select MAX(tot_ped) 'Maior Pedido' from pedido

select AVG(tot_ped) 'Media Pedidos' from pedido

select id_prod from item_pedido inner join pedido on item_pedido.id_ped = pedido.id_ped where pedido.id_clie = 4

select id_pgto from pedido where id_clie = '1'

select	pedido.id_ped 'número do pedido', 
		pedido.dt_ped 'data do pedido', 
		cliente.id_clie 'código do cliente',  
		cliente.nm_clie'nome do cliente', 
		pagamento.dsc_pgto 'descrição da condição de pagamento', 
		item_pedido.qtd_item_ped 'itens do produto', 
		produto.dsc_prod +' R$'+ convert(varchar,item_pedido.vl_item_ped) 'descrição e valor do produto', 
		item_pedido.qtd_item_ped*item_pedido.vl_item_ped 'valor do total do item' , 
		pedido.tot_ped 'total de pedido'

from cliente
	inner join pedido on cliente.id_clie = pedido.id_clie
	inner join item_pedido on pedido.id_ped = item_pedido.id_ped
	inner join pagamento on pedido.id_pgto = pagamento.id_pgto
	inner join produto on item_pedido.id_prod = produto.id_prod
