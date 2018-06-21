##############################
### バイオハンドリング
##############################

scoreboard players operation $PuppetID ID = @s ID
execute as @a if score @s ID = $PuppetID ID run tag @s add ActivePlayer

execute if entity @a[tag=ActivePlayer,scores={TimeSinceDeath=1},limit=1] run function puppet_manager:string_cut
effect give @a[tag=ActivePlayer,limit=1] minecraft:hunger 1 0

execute unless block ~ ~ ~ minecraft:farmland run tellraw @a[tag=ActivePlayer,limit=1] {"text":"パペットは耕地を見つけられなかった…","color":"yellow"}

function calc_manager:update_random
scoreboard players operation $Random Global %= $4 Const

execute if score $Random Global matches 0 unless block ^1 ^ ^ minecraft:farmland run scoreboard players set $Random Global 1
execute if score $Random Global matches 1 unless block ^ ^ ^1 minecraft:farmland run scoreboard players set $Random Global 3
execute if score $Random Global matches 2 unless block ^ ^ ^1 minecraft:farmland run scoreboard players set $Random Global 3
execute if score $Random Global matches 3 unless block ^-1 ^ ^ minecraft:farmland run scoreboard players set $Random Global 0
execute if score $Random Global matches 0 unless block ^1 ^ ^ minecraft:farmland run scoreboard players set $Random Global 1
execute if score $Random Global matches 1 unless block ^ ^ ^1 minecraft:farmland run scoreboard players set $Random Global 4

execute if score $Random Global matches 0..0 run tp @s ~ ~ ~ ~-90 0
execute if score $Random Global matches 1..2 run tp @s ~ ~ ~ ~ 0
execute if score $Random Global matches 3..3 run tp @s ~ ~ ~ ~90 0
execute if score $Random Global matches 4..4 run tp @s ~ ~ ~ ~180 0

execute at @s positioned ^ ^ ^1 if block ~ ~ ~ minecraft:farmland align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

execute at @s run function puppet_manager:bio_handling/farm
execute if score @a[tag=ActivePlayer,limit=1] ModeSkill matches 71032..71033 run execute at @s run function puppet_manager:bio_handling/farm
execute if score @a[tag=ActivePlayer,limit=1] ModeSkill matches 71033..71033 run execute at @s run function puppet_manager:bio_handling/farm

execute at @s as @e[distance=..1,type=minecraft:item,tag=!Initialized] run data merge entity @s {PickupDelay:0s}
execute at @s run tp @e[distance=..1,type=minecraft:item,tag=!Initialized] @a[tag=ActivePlayer,limit=1]

tag @a[tag=ActivePlayer,limit=1] remove ActivePlayer
