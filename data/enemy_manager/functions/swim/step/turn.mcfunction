##############################
### ステップ
##############################

data merge entity @s {Motion:[0d,0d,0d]}
scoreboard players operation $Random Global %= $6 Const
#execute if score $Random Global matches 0 if entity @s[tag=Front] run tp @s ~ ~ ~ facing ^ ^ ^1
execute if score $Random Global matches 1 if entity @s[tag=Behind] run tp @s ~ ~ ~ facing ^ ^ ^-1
execute if score $Random Global matches 2 if entity @s[tag=Left] run tp @s ~ ~ ~ facing ^1 ^ ^
execute if score $Random Global matches 3 if entity @s[tag=Right] run tp @s ~ ~ ~ facing ^-1 ^ ^
execute if score $Random Global matches 4 if entity @s[tag=Up] run tp @s ~ ~ ~ facing ^ ^1 ^
execute if score $Random Global matches 5 if entity @s[tag=Down] run tp @s ~ ~ ~ facing ^ ^-1 ^
execute store result score $M Global run data get entity @s Attributes[0].Modifiers[2].Amount 100
execute if score $Random Global matches 0 unless entity @s[tag=Front] run scoreboard players set $M Global 0
execute if score $Random Global matches 1 unless entity @s[tag=Behind] run scoreboard players set $M Global 0
execute if score $Random Global matches 2 unless entity @s[tag=Left] run scoreboard players set $M Global 0
execute if score $Random Global matches 3 unless entity @s[tag=Right] run scoreboard players set $M Global 0
execute if score $Random Global matches 4 unless entity @s[tag=Up] run scoreboard players set $M Global 0
execute if score $Random Global matches 5 unless entity @s[tag=Down] run scoreboard players set $M Global 0
execute if score $Random Global matches 4 if entity @s[tag=Up] run scoreboard players operation $M Global /= $2 Const
execute if score $Random Global matches 5 if entity @s[tag=Down] run scoreboard players operation $M Global /= $2 Const
