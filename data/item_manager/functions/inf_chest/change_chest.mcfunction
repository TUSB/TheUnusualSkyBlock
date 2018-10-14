scoreboard players set $changed_slot Global -1

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:0b,id:"minecraft:white_wool",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:0b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 0
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:0b,id:"minecraft:white_wool"}]} store result score $stacks Global run data get block ~ ~ ~ Items[0].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot0 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:0b,id:"minecraft:white_wool"}]} unless score $stacks Global = $inf_slot0 Global run scoreboard players set $changed_slot Global 0
execute if score $changed_slot Global matches -1 if score $inf_slot0 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:0b,id:"minecraft:white_wool",Count:64b}]} run scoreboard players set $changed_slot Global 0

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:1b,id:"minecraft:snowball",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:1b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 1
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:1b,id:"minecraft:snowball"}]} store result score $stacks Global run data get block ~ ~ ~ Items[1].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot1 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:1b,id:"minecraft:snowball"}]} unless score $stacks Global = $inf_slot1 Global run scoreboard players set $changed_slot Global 1
execute if score $changed_slot Global matches -1 if score $inf_slot1 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:1b,id:"minecraft:snowball",Count:16b}]} run scoreboard players set $changed_slot Global 1

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:2b,id:"minecraft:arrow",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:2b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 2
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:2b,id:"minecraft:arrow"}]} store result score $stacks Global run data get block ~ ~ ~ Items[2].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot2 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:2b,id:"minecraft:arrow"}]} unless score $stacks Global = $inf_slot2 Global run scoreboard players set $changed_slot Global 2
execute if score $changed_slot Global matches -1 if score $inf_slot2 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:2b,id:"minecraft:arrow",Count:64b}]} run scoreboard players set $changed_slot Global 2

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:3b,id:"minecraft:polar_bear_spawn_egg",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:3b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 3
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:3b,id:"minecraft:polar_bear_spawn_egg"}]} store result score $stacks Global run data get block ~ ~ ~ Items[3].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot3 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:3b,id:"minecraft:polar_bear_spawn_egg"}]} unless score $stacks Global = $inf_slot3 Global run scoreboard players set $changed_slot Global 3
execute if score $changed_slot Global matches -1 if score $inf_slot3 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:3b,id:"minecraft:polar_bear_spawn_egg",Count:64b}]} run scoreboard players set $changed_slot Global 3

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:4b,id:"minecraft:pig_spawn_egg",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:4b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 4
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:4b,id:"minecraft:pig_spawn_egg"}]} store result score $stacks Global run data get block ~ ~ ~ Items[4].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot4 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:4b,id:"minecraft:pig_spawn_egg"}]} unless score $stacks Global = $inf_slot4 Global run scoreboard players set $changed_slot Global 4
execute if score $changed_slot Global matches -1 if score $inf_slot4 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:4b,id:"minecraft:pig_spawn_egg",Count:64b}]} run scoreboard players set $changed_slot Global 4

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:5b,id:"minecraft:drowned_spawn_egg",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:5b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 5
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:5b,id:"minecraft:drowned_spawn_egg"}]} store result score $stacks Global run data get block ~ ~ ~ Items[5].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot5 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:5b,id:"minecraft:drowned_spawn_egg"}]} unless score $stacks Global = $inf_slot5 Global run scoreboard players set $changed_slot Global 5
execute if score $changed_slot Global matches -1 if score $inf_slot5 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:5b,id:"minecraft:drowned_spawn_egg",Count:64b}]} run scoreboard players set $changed_slot Global 5

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:6b,id:"minecraft:emerald",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:6b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 6
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:6b,id:"minecraft:emerald"}]} store result score $stacks Global run data get block ~ ~ ~ Items[6].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot6 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:6b,id:"minecraft:emerald"}]} unless score $stacks Global = $inf_slot6 Global run scoreboard players set $changed_slot Global 6
execute if score $changed_slot Global matches -1 if score $inf_slot6 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:6b,id:"minecraft:emerald",Count:64b}]} run scoreboard players set $changed_slot Global 6

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:7b,id:"minecraft:bread",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:7b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 7
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:7b,id:"minecraft:bread"}]} store result score $stacks Global run data get block ~ ~ ~ Items[7].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot7 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:7b,id:"minecraft:bread"}]} unless score $stacks Global = $inf_slot7 Global run scoreboard players set $changed_slot Global 7
execute if score $changed_slot Global matches -1 if score $inf_slot7 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:7b,id:"minecraft:bread",Count:64b}]} run scoreboard players set $changed_slot Global 7

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:8b,id:"minecraft:enchanted_golden_apple",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:8b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 8
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:8b,id:"minecraft:enchanted_golden_apple"}]} store result score $stacks Global run data get block ~ ~ ~ Items[8].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot8 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:8b,id:"minecraft:enchanted_golden_apple"}]} unless score $stacks Global = $inf_slot8 Global run scoreboard players set $changed_slot Global 8
execute if score $changed_slot Global matches -1 if score $inf_slot8 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:8b,id:"minecraft:enchanted_golden_apple",Count:64b}]} run scoreboard players set $changed_slot Global 8

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:9b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:9b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 9
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:9b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[9].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot9 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:9b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot9 Global run scoreboard players set $changed_slot Global 9
execute if score $changed_slot Global matches -1 if score $inf_slot9 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:9b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 9

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:10b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:10b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 10
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:10b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[10].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot10 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:10b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot10 Global run scoreboard players set $changed_slot Global 10
execute if score $changed_slot Global matches -1 if score $inf_slot10 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:10b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 10

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:11b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:11b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 11
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:11b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[11].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot11 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:11b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot11 Global run scoreboard players set $changed_slot Global 11
execute if score $changed_slot Global matches -1 if score $inf_slot11 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:11b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 11

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:12b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:12b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 12
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:12b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[12].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot12 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:12b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot12 Global run scoreboard players set $changed_slot Global 12
execute if score $changed_slot Global matches -1 if score $inf_slot12 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:12b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 12

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:13b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:13b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 13
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:13b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[13].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot13 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:13b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot13 Global run scoreboard players set $changed_slot Global 13
execute if score $changed_slot Global matches -1 if score $inf_slot13 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:13b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 13

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:14b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:14b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 14
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:14b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[14].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot14 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:14b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot14 Global run scoreboard players set $changed_slot Global 14
execute if score $changed_slot Global matches -1 if score $inf_slot14 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:14b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 14

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:15b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:15b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 15
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:15b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[15].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot15 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:15b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot15 Global run scoreboard players set $changed_slot Global 15
execute if score $changed_slot Global matches -1 if score $inf_slot15 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:15b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 15

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:16b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:16b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 16
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:16b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[16].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot16 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:16b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot16 Global run scoreboard players set $changed_slot Global 16
execute if score $changed_slot Global matches -1 if score $inf_slot16 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:16b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 16

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:17b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:17b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 17
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:17b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[17].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot17 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:17b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot17 Global run scoreboard players set $changed_slot Global 17
execute if score $changed_slot Global matches -1 if score $inf_slot17 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:17b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 17

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:18b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:18b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 18
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:18b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[18].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot18 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:18b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot18 Global run scoreboard players set $changed_slot Global 18
execute if score $changed_slot Global matches -1 if score $inf_slot18 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:18b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 18

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:19b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:19b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 19
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:19b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[19].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot19 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:19b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot19 Global run scoreboard players set $changed_slot Global 19
execute if score $changed_slot Global matches -1 if score $inf_slot19 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:19b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 19

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:20b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:20b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 20
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:20b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[20].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot20 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:20b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot20 Global run scoreboard players set $changed_slot Global 20
execute if score $changed_slot Global matches -1 if score $inf_slot20 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:20b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 20

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:21b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:21b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 21
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:21b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[21].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot21 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:21b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot21 Global run scoreboard players set $changed_slot Global 21
execute if score $changed_slot Global matches -1 if score $inf_slot21 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:21b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 21

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:22b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:22b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 22
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:22b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[22].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot22 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:22b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot22 Global run scoreboard players set $changed_slot Global 22
execute if score $changed_slot Global matches -1 if score $inf_slot22 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:22b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 22

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:23b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:23b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 23
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:23b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[23].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot23 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:23b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot23 Global run scoreboard players set $changed_slot Global 23
execute if score $changed_slot Global matches -1 if score $inf_slot23 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:23b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 23

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:24b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:24b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 24
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:24b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[24].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot24 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:24b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot24 Global run scoreboard players set $changed_slot Global 24
execute if score $changed_slot Global matches -1 if score $inf_slot24 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:24b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 24

execute if score $changed_slot Global matches -1 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:25b,id:"minecraft:air",tag:{AttributeModifiers:[{AttributeName:"total"}]}}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:25b,id:"minecraft:white_stained_glass_pane"}]} run scoreboard players set $changed_slot Global 25
execute if score $changed_slot Global matches -1 if block ~ ~ ~ minecraft:chest{Items:[{Slot:25b,id:"minecraft:air"}]} store result score $stacks Global run data get block ~ ~ ~ Items[25].Count 1
execute if score $changed_slot Global matches -1 if score $inf_slot25 Global matches 0..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:25b,id:"minecraft:air"}]} unless score $stacks Global = $inf_slot25 Global run scoreboard players set $changed_slot Global 25
execute if score $changed_slot Global matches -1 if score $inf_slot25 Global matches 65.. unless block ~ ~ ~ minecraft:chest{Items:[{Slot:25b,id:"minecraft:air",Count:64b}]} run scoreboard players set $changed_slot Global 25

scoreboard players set $stacks Global 0
execute if score $changed_slot Global matches 0..25 unless block ~ ~ ~ minecraft:chest{Items:[{Slot:26b}]} run function item_manager:inf_chest/allocate

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b}]} run function item_manager:inf_chest/change26
clone ~ ~ ~ ~ ~ ~ 5 1 10
execute store result block 5 1 10 Items[26].Count byte 1 run scoreboard players get $0 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b}]} run function item_manager:inf_chest/dump26

function calc_manager:set_random
scoreboard players operation $inf_rand Global = @s Global
