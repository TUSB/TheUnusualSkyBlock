#異物を[26]に移動
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:7b,id:"minecraft:bread"}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:7b,id:"minecraft:white_stained_glass_pane"}]} store result block ~ ~ ~ Items[7].Slot byte 1 run scoreboard players get $26 Const
#スタック数取得  空・ガラスなら0
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:7b,id:"minecraft:bread"}]} store result score $stacks Global run data get block ~ ~ ~ Items[7].Count 1
#inf_slot計算
execute if score $inf_slot7 Global matches 0..64 store success score $flag Global run scoreboard players operation $inf_slot7 Global = $stacks Global
execute if score $inf_slot7 Global matches 65.. if score $flag Global matches 0 run scoreboard players operation $inf_slot7 Global += $stacks Global
execute if score $inf_slot7 Global matches 65.. if score $flag Global matches 0 run scoreboard players remove $inf_slot7 Global 64
#アイテムとスタック数、attributeセット
execute if score $inf_slot7 Global matches 0 run replaceitem block ~ ~ ~ container.7 minecraft:white_stained_glass_pane{display:{Name:"{\"text\":\"---パン---\"}"}} 1
execute if score $inf_slot7 Global matches 1.. run replaceitem block ~ ~ ~ container.7 minecraft:bread{AttributeModifiers:[{AttributeName:"total",Amount:0,Operation:0,Slot:"mainhand",UUIDLeast:1,UUIDMost:1}]} 64
execute if score $inf_slot7 Global matches 1..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:7b}]} store result block ~ ~ ~ Items[7].Count byte 1 run scoreboard players get $inf_slot7 Global
execute if score $inf_slot7 Global matches 1.. if block ~ ~ ~ minecraft:chest{Items:[{Slot:7b}]} store result block ~ ~ ~ Items[7].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get $inf_slot7 Global
