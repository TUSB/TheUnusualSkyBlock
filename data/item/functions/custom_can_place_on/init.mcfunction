#CanPlaceOnを付けるアイテムを取得
data modify storage item: CanPlaceOn set value []
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:torch"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:vine"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:cobweb"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:ender_eye"}]
data remove storage item: CanPlaceOn[{tag:{CustomCanPlaceOn:true}}]
#アイテムごとにループ
execute if data storage item: CanPlaceOn[-1] run function item:custom_can_place_on/loop
#リセット
data remove storage item: CanPlaceOn