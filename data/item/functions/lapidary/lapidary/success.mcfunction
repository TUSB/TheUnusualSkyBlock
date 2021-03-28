#個数-1
execute store result score _ _ run data get storage item: Items[{Slot:10b}].Count
scoreboard players remove _ _ 1
execute store result entity @s Items[{Slot:10b}].Count byte 1 run scoreboard players get _ _

execute store result score _ _ run data get storage item: Items[{Slot:11b}].Count
scoreboard players remove _ _ 1
execute store result entity @s Items[{Slot:11b}].Count byte 1 run scoreboard players get _ _

execute store result score _ _ run data get storage item: Items[{Slot:15b}].Count
scoreboard players remove _ _ 1
execute store result entity @s Items[{Slot:15b}].Count byte 1 run scoreboard players get _ _

execute store result score _ _ run data get storage item: Items[{Slot:16b}].Count
scoreboard players remove _ _ 1
execute store result entity @s Items[{Slot:16b}].Count byte 1 run scoreboard players get _ _

#演出
function makeup:item/lapidary/success
