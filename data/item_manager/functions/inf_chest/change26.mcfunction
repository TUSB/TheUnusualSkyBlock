scoreboard players set $changed_slot Global -1
execute store result score $stacks Global run data get block ~ ~ ~ Items[26].Count 1

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:white_wool"}]} run scoreboard players operation $inf_slot0 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:white_wool"}]} if score $inf_slot0 Global matches 0..64 store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $inf_slot0 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:white_wool"}]} if score $inf_slot0 Global matches 65.. store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:white_wool"}]} run scoreboard players set $changed_slot Global 0

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:snowball"}]} run scoreboard players operation $inf_slot1 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:snowball"}]} if score $inf_slot1 Global matches 0..16 store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players get $inf_slot1 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:snowball"}]} if score $inf_slot1 Global matches 17.. store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players get $16 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:snowball"}]} run scoreboard players set $changed_slot Global 1

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:arrow"}]} run scoreboard players operation $inf_slot2 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:arrow"}]} if score $inf_slot2 Global matches 0..64 store result block ~ ~ ~ Items[2].Count byte 1 run scoreboard players get $inf_slot2 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:arrow"}]} if score $inf_slot2 Global matches 65.. store result block ~ ~ ~ Items[2].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:arrow"}]} run scoreboard players set $changed_slot Global 2

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:polar_bear_spawn_egg"}]} run scoreboard players operation $inf_slot3 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:polar_bear_spawn_egg"}]} if score $inf_slot3 Global matches 0..64 store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players get $inf_slot3 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:polar_bear_spawn_egg"}]} if score $inf_slot3 Global matches 65.. store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:polar_bear_spawn_egg"}]} run scoreboard players set $changed_slot Global 3

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:pig_spawn_egg"}]} run scoreboard players operation $inf_slot4 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:pig_spawn_egg"}]} if score $inf_slot4 Global matches 0..64 store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players get $inf_slot4 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:pig_spawn_egg"}]} if score $inf_slot4 Global matches 65.. store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:pig_spawn_egg"}]} run scoreboard players set $changed_slot Global 4

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:drowned_spawn_egg"}]} run scoreboard players operation $inf_slot5 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:drowned_spawn_egg"}]} if score $inf_slot5 Global matches 0..64 store result block ~ ~ ~ Items[5].Count byte 1 run scoreboard players get $inf_slot5 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:drowned_spawn_egg"}]} if score $inf_slot5 Global matches 65.. store result block ~ ~ ~ Items[5].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:drowned_spawn_egg"}]} run scoreboard players set $changed_slot Global 5

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:emerald"}]} run scoreboard players operation $inf_slot6 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:emerald"}]} if score $inf_slot6 Global matches 0..64 store result block ~ ~ ~ Items[6].Count byte 1 run scoreboard players get $inf_slot6 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:emerald"}]} if score $inf_slot6 Global matches 65.. store result block ~ ~ ~ Items[6].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:emerald"}]} run scoreboard players set $changed_slot Global 6

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:bread"}]} run scoreboard players operation $inf_slot7 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:bread"}]} if score $inf_slot7 Global matches 0..64 store result block ~ ~ ~ Items[7].Count byte 1 run scoreboard players get $inf_slot7 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:bread"}]} if score $inf_slot7 Global matches 65.. store result block ~ ~ ~ Items[7].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:bread"}]} run scoreboard players set $changed_slot Global 7

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:enchanted_golden_apple"}]} run scoreboard players operation $inf_slot8 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:enchanted_golden_apple"}]} if score $inf_slot8 Global matches 0..64 store result block ~ ~ ~ Items[8].Count byte 1 run scoreboard players get $inf_slot8 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:enchanted_golden_apple"}]} if score $inf_slot8 Global matches 65.. store result block ~ ~ ~ Items[8].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:enchanted_golden_apple"}]} run scoreboard players set $changed_slot Global 8

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot9 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot9 Global matches 0..64 store result block ~ ~ ~ Items[9].Count byte 1 run scoreboard players get $inf_slot9 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot9 Global matches 65.. store result block ~ ~ ~ Items[9].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 9

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot10 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot10 Global matches 0..64 store result block ~ ~ ~ Items[10].Count byte 1 run scoreboard players get $inf_slot10 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot10 Global matches 65.. store result block ~ ~ ~ Items[10].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 10

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot11 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot11 Global matches 0..64 store result block ~ ~ ~ Items[11].Count byte 1 run scoreboard players get $inf_slot11 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot11 Global matches 65.. store result block ~ ~ ~ Items[11].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 11

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot12 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot12 Global matches 0..64 store result block ~ ~ ~ Items[12].Count byte 1 run scoreboard players get $inf_slot12 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot12 Global matches 65.. store result block ~ ~ ~ Items[12].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 12

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot13 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot13 Global matches 0..64 store result block ~ ~ ~ Items[13].Count byte 1 run scoreboard players get $inf_slot13 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot13 Global matches 65.. store result block ~ ~ ~ Items[13].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 13

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot14 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot14 Global matches 0..64 store result block ~ ~ ~ Items[14].Count byte 1 run scoreboard players get $inf_slot14 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot14 Global matches 65.. store result block ~ ~ ~ Items[14].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 14

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot15 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot15 Global matches 0..64 store result block ~ ~ ~ Items[15].Count byte 1 run scoreboard players get $inf_slot15 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot15 Global matches 65.. store result block ~ ~ ~ Items[15].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 15

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot16 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot16 Global matches 0..64 store result block ~ ~ ~ Items[16].Count byte 1 run scoreboard players get $inf_slot16 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot16 Global matches 65.. store result block ~ ~ ~ Items[16].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 16

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot17 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot17 Global matches 0..64 store result block ~ ~ ~ Items[17].Count byte 1 run scoreboard players get $inf_slot17 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot17 Global matches 65.. store result block ~ ~ ~ Items[17].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 17

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot18 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot18 Global matches 0..64 store result block ~ ~ ~ Items[18].Count byte 1 run scoreboard players get $inf_slot18 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot18 Global matches 65.. store result block ~ ~ ~ Items[18].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 18

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot19 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot19 Global matches 0..64 store result block ~ ~ ~ Items[19].Count byte 1 run scoreboard players get $inf_slot19 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot19 Global matches 65.. store result block ~ ~ ~ Items[19].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 19

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot20 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot20 Global matches 0..64 store result block ~ ~ ~ Items[20].Count byte 1 run scoreboard players get $inf_slot20 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot20 Global matches 65.. store result block ~ ~ ~ Items[20].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 20

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot21 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot21 Global matches 0..64 store result block ~ ~ ~ Items[21].Count byte 1 run scoreboard players get $inf_slot21 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot21 Global matches 65.. store result block ~ ~ ~ Items[21].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 21

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot22 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot22 Global matches 0..64 store result block ~ ~ ~ Items[22].Count byte 1 run scoreboard players get $inf_slot22 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot22 Global matches 65.. store result block ~ ~ ~ Items[22].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 22

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot23 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot23 Global matches 0..64 store result block ~ ~ ~ Items[23].Count byte 1 run scoreboard players get $inf_slot23 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot23 Global matches 65.. store result block ~ ~ ~ Items[23].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 23

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot24 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot24 Global matches 0..64 store result block ~ ~ ~ Items[24].Count byte 1 run scoreboard players get $inf_slot24 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot24 Global matches 65.. store result block ~ ~ ~ Items[24].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 24

execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players operation $inf_slot25 Global += $stacks Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot25 Global matches 0..64 store result block ~ ~ ~ Items[25].Count byte 1 run scoreboard players get $inf_slot25 Global
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} if score $inf_slot25 Global matches 65.. store result block ~ ~ ~ Items[25].Count byte 1 run scoreboard players get $64 Const
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:26b,id:"minecraft:air"}]} run scoreboard players set $changed_slot Global 25

execute if score $changed_slot Global matches 0..25 store result block ~ ~ ~ Items[26].Count byte 1 run scoreboard players get $0 Const
execute if score $changed_slot Global matches 0..25 run function item_manager:inf_chest/allocate
