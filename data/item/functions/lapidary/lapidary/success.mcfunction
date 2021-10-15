#個数-1
execute store result entity @s Items[{Slot:10b}].Count byte 0.99999 run data get storage item: Items[{Slot:10b}].Count
execute store result entity @s Items[{Slot:11b}].Count byte 0.99999 run data get storage item: Items[{Slot:11b}].Count
execute store result entity @s Items[{Slot:15b}].Count byte 0.99999 run data get storage item: Items[{Slot:15b}].Count
execute store result entity @s Items[{Slot:16b}].Count byte 0.99999 run data get storage item: Items[{Slot:16b}].Count
#アイテムをプレイヤーにloot
#Slot削除でItems[-1]がSlot:0bに移動する
execute in area:control_area run data remove block 2 2 2 Items[].Slot
execute as @a[scores={_=1..},sort=nearest,limit=1] in area:control_area run loot give @s mine 2 2 2 debug_stick
#演出
function makeup:item/lapidary/success
