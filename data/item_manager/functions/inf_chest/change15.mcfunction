#異物を[26]に移動
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:15b,id:"minecraft:air"}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:15b,id:"minecraft:white_stained_glass_pane"}]} store result block ~ ~ ~ Items[15].Slot byte 1 run scoreboard players get $26 Const
#スタック数取得  空・ガラスなら0
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:15b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[15].Count 1
#inf_slot計算
execute if score $inf_slot15 Global matches 0..64 store success score $flag Global run scoreboard players operation $inf_slot15 Global = $stacks Global
execute if score $inf_slot15 Global matches 65.. if score $flag Global matches 0 run scoreboard players operation $inf_slot15 Global += $stacks Global
execute if score $inf_slot15 Global matches 65.. if score $flag Global matches 0 run scoreboard players remove $inf_slot15 Global 64
#アイテムとスタック数、attributeセット
execute if score $inf_slot15 Global matches 0 run replaceitem block ~ ~ ~ container.15 minecraft:white_stained_glass_pane{display:{Name:"{\"text\":\"---スロット15---\"}"}} 1
execute if score $inf_slot15 Global matches 1.. run replaceitem block ~ ~ ~ container.15 minecraft:air{AttributeModifiers:[{AttributeName:"total",Amount:0,Operation:0,Slot:"mainhand",UUIDLeast:1,UUIDMost:1}]} 64
execute if score $inf_slot15 Global matches 1..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:15b}]} store result block ~ ~ ~ Items[15].Count byte 1 run scoreboard players get $inf_slot15 Global
execute if score $inf_slot15 Global matches 1.. if block ~ ~ ~ minecraft:chest{Items:[{Slot:15b}]} store result block ~ ~ ~ Items[15].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get $inf_slot15 Global
