#Engravingつきアイテムを取得
data modify storage item: Engrave_Inventory set value []
data modify storage item: Engrave_Inventory append from entity @s Inventory[{tag:{Engraving:{}}}]
#アイテムごとにループ
function item:enchant/engraving/loop
#演出
function makeup:item/enchant/enchant
#リセット
data remove storage item: Engrave_Inventory
