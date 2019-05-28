select * from cliente

select * from pagamento

select * from produto

select * from pedido

select * from item_pedido


update item_pedido set vl_item_ped = produto.vl_prod
from item_pedido inner join produto on item_pedido.id_prod = produto.id_prod

update pedido set tot_ped = (select SUM(vl_item_ped) from item_pedido where item_pedido.id_ped = pedido.id_ped)