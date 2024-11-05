#> item:can_place_on/init
#CanPlaceOnを付けるアイテムを取得
data modify storage item: CanPlaceOn set value []
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:torch"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:vine"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:cobweb"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:ender_eye"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:filled_map"}]
data remove storage item: CanPlaceOn[{components:{"minecraft:custom_data":{CustomCanPlaceOn:true}}}]
#アイテムごとにループ
execute if data storage item: CanPlaceOn[-1] run function item:can_place_on/loop
#リセット
data remove storage item: CanPlaceOn
