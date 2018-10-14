#異物を[26]に移動
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:1b,id:"minecraft:snowball"}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:1b,id:"minecraft:white_stained_glass_pane"}]} store result block ~ ~ ~ Items[1].Slot byte 1 run scoreboard players get $26 Const
#スタック数取得  空・ガラスなら0
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:1b,id:"minecraft:snowball"}]} store result score $stacks Global run data get block ~ ~ ~ Items[1].Count 1
#inf_slot計算
execute if score $inf_slot1 Global matches 0..16 store success score $flag Global run scoreboard players operation $inf_slot1 Global = $stacks Global
execute if score $inf_slot1 Global matches 17.. if score $flag Global matches 0 run scoreboard players operation $inf_slot1 Global += $stacks Global
execute if score $inf_slot1 Global matches 17.. if score $flag Global matches 0 run scoreboard players remove $inf_slot1 Global 16
#アイテムとスタック数、attributeセット
execute if score $inf_slot1 Global matches 0 run replaceitem block ~ ~ ~ container.1 minecraft:white_stained_glass_pane{display:{Name:"{\"text\":\"---雪玉---\"}"}} 1
execute if score $inf_slot1 Global matches 1.. run replaceitem block ~ ~ ~ container.1 minecraft:snowball{AttributeModifiers:[{AttributeName:"total",Amount:0,Operation:0,Slot:"mainhand",UUIDLeast:1,UUIDMost:1}]} 16
execute if score $inf_slot1 Global matches 1..16 if block ~ ~ ~ minecraft:chest{Items:[{Slot:1b}]} store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players get $inf_slot1 Global
execute if score $inf_slot1 Global matches 1.. if block ~ ~ ~ minecraft:chest{Items:[{Slot:1b}]} store result block ~ ~ ~ Items[1].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get $inf_slot1 Global
