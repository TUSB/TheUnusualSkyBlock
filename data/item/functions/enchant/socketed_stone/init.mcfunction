#SocketedStoneつきアイテムを取得
data modify storage item: Inventory set value []
data modify storage item: Inventory append from entity @s Inventory[{tag:{SocketedStone:{}}}]
#アイテムごとにループ
function item:enchant/socketed_stone/loop
#演出
function makeup:item/enchant/enchant
