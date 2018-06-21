##############################
### バイオハンドリング農作
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $10 Const

execute if score $Random Global matches 0..4 run fill ~ ~1 ~ ~ ~1 ~ minecraft:beetroots[age=3] replace minecraft:beetroots[age=2]
execute if score $Random Global matches 0..4 run fill ~ ~1 ~ ~ ~1 ~ minecraft:beetroots[age=2] replace minecraft:beetroots[age=1]
execute if score $Random Global matches 0..4 run fill ~ ~1 ~ ~ ~1 ~ minecraft:beetroots[age=1] replace minecraft:beetroots[age=0]
execute if score $Random Global matches 5..7 run fill ~ ~1 ~ ~ ~1 ~ minecraft:wheat[age=7] replace minecraft:wheat[age=6]
execute if score $Random Global matches 5..7 run fill ~ ~1 ~ ~ ~1 ~ minecraft:wheat[age=6] replace minecraft:wheat[age=5]
execute if score $Random Global matches 5..7 run fill ~ ~1 ~ ~ ~1 ~ minecraft:wheat[age=5] replace minecraft:wheat[age=4]
execute if score $Random Global matches 5..7 run fill ~ ~1 ~ ~ ~1 ~ minecraft:wheat[age=4] replace minecraft:wheat[age=3]
execute if score $Random Global matches 5..7 run fill ~ ~1 ~ ~ ~1 ~ minecraft:wheat[age=3] replace minecraft:wheat[age=2]
execute if score $Random Global matches 5..7 run fill ~ ~1 ~ ~ ~1 ~ minecraft:wheat[age=2] replace minecraft:wheat[age=1]
execute if score $Random Global matches 5..7 run fill ~ ~1 ~ ~ ~1 ~ minecraft:wheat[age=1] replace minecraft:wheat[age=0]
execute if score $Random Global matches 8..8 run fill ~ ~1 ~ ~ ~1 ~ minecraft:carrots[age=7] replace minecraft:carrots[age=6]
execute if score $Random Global matches 8..8 run fill ~ ~1 ~ ~ ~1 ~ minecraft:carrots[age=6] replace minecraft:carrots[age=5]
execute if score $Random Global matches 8..8 run fill ~ ~1 ~ ~ ~1 ~ minecraft:carrots[age=5] replace minecraft:carrots[age=4]
execute if score $Random Global matches 8..8 run fill ~ ~1 ~ ~ ~1 ~ minecraft:carrots[age=4] replace minecraft:carrots[age=3]
execute if score $Random Global matches 8..8 run fill ~ ~1 ~ ~ ~1 ~ minecraft:carrots[age=3] replace minecraft:carrots[age=2]
execute if score $Random Global matches 8..8 run fill ~ ~1 ~ ~ ~1 ~ minecraft:carrots[age=2] replace minecraft:carrots[age=1]
execute if score $Random Global matches 8..8 run fill ~ ~1 ~ ~ ~1 ~ minecraft:carrots[age=1] replace minecraft:carrots[age=0]
execute if score $Random Global matches 9..9 run fill ~ ~1 ~ ~ ~1 ~ minecraft:potatoes[age=7] replace minecraft:potatoes[age=6]
execute if score $Random Global matches 9..9 run fill ~ ~1 ~ ~ ~1 ~ minecraft:potatoes[age=6] replace minecraft:potatoes[age=5]
execute if score $Random Global matches 9..9 run fill ~ ~1 ~ ~ ~1 ~ minecraft:potatoes[age=5] replace minecraft:potatoes[age=4]
execute if score $Random Global matches 9..9 run fill ~ ~1 ~ ~ ~1 ~ minecraft:potatoes[age=4] replace minecraft:potatoes[age=3]
execute if score $Random Global matches 9..9 run fill ~ ~1 ~ ~ ~1 ~ minecraft:potatoes[age=3] replace minecraft:potatoes[age=2]
execute if score $Random Global matches 9..9 run fill ~ ~1 ~ ~ ~1 ~ minecraft:potatoes[age=2] replace minecraft:potatoes[age=1]
execute if score $Random Global matches 9..9 run fill ~ ~1 ~ ~ ~1 ~ minecraft:potatoes[age=1] replace minecraft:potatoes[age=0]
execute if score $Random Global matches 0..4 if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:beetroots
execute if score $Random Global matches 5..7 if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:wheat
execute if score $Random Global matches 8..8 if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:carrots
execute if score $Random Global matches 9..9 if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:potatoes

execute if block ~ ~1 ~ minecraft:beetroots[age=3] run setblock ~ ~1 ~ minecraft:air destroy
execute if block ~ ~1 ~ minecraft:wheat[age=7] run setblock ~ ~1 ~ minecraft:air destroy
execute if block ~ ~1 ~ minecraft:carrots[age=7] run setblock ~ ~1 ~ minecraft:air destroy
execute if block ~ ~1 ~ minecraft:potatoes[age=7] run setblock ~ ~1 ~ minecraft:air destroy
