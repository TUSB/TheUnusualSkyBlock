#個数-1
execute store result entity @s Items[{Slot:10b}].Count byte 0.99999 run data get storage item: Items[{Slot:10b}].Count
execute store result entity @s Items[{Slot:11b}].Count byte 0.99999 run data get storage item: Items[{Slot:11b}].Count
execute store result entity @s Items[{Slot:15b}].Count byte 0.99999 run data get storage item: Items[{Slot:15b}].Count
execute store result entity @s Items[{Slot:16b}].Count byte 0.99999 run data get storage item: Items[{Slot:16b}].Count
#アイテムをプレイヤーに与える
#インベントリ満タンに備えてitemにデータを付与する
#Slot削除でItems[-1]がSlot:0bに移動する
execute in area:control_area run data remove block 2 2 2 Items[].Slot
execute at @a[scores={_=1..},sort=nearest,limit=1] run summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}},Tags:[LapidaryItem],PickupDelay:0s}
execute at @a[scores={_=1..},sort=nearest,limit=1] as @e[tag=LapidaryItem,distance=..0] in area:control_area run data modify entity @s Item merge from block 2 2 2 Items[0]
#演出
function makeup:item/lapidary/success
