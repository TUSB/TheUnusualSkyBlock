#異物を[26]に移動
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:24b}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:24b,id:"minecraft:air"}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:24b,id:"minecraft:white_stained_glass_pane"}]} store result block ~ ~ ~ Items[24].Slot byte 1 run scoreboard players get $26 Const
#スタック数取得  空・ガラスなら0
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:24b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[24].Count 1
#inf_slot計算
execute if score $inf_slot24 Global matches 0..64 store success score $flag Global run scoreboard players operation $inf_slot24 Global = $stacks Global
execute if score $inf_slot24 Global matches 65.. if score $flag Global matches 0 run scoreboard players operation $inf_slot24 Global += $stacks Global
execute if score $inf_slot24 Global matches 65.. if score $flag Global matches 0 run scoreboard players remove $inf_slot24 Global 64
#アイテムとスタック数、attributeセット
execute if score $inf_slot24 Global matches 0 run replaceitem block ~ ~ ~ container.24 minecraft:white_stained_glass_pane{display:{Name:"{\"text\":\"---スロット24---\"}"}} 1
execute if score $inf_slot24 Global matches 1.. run replaceitem block ~ ~ ~ container.24 minecraft:air{AttributeModifiers:[{AttributeName:"total",Amount:0,Operation:0,Slot:"mainhand",UUIDLeast:1,UUIDMost:1}]} 64
execute if score $inf_slot24 Global matches 1..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:24b}]} store result block ~ ~ ~ Items[24].Count byte 1 run scoreboard players get $inf_slot24 Global
execute if score $inf_slot24 Global matches 1.. if block ~ ~ ~ minecraft:chest{Items:[{Slot:24b}]} store result block ~ ~ ~ Items[24].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get $inf_slot24 Global
