#Engravingつきアイテムを取得
data modify storage item: Inventory set value []
data modify storage item: Inventory append from entity @s Inventory[{tag:{Engraving:{}}}]
#アイテムごとにループ
function item:enchant/engraving/loop
#演出
function makeup:item/enchant/enchant
