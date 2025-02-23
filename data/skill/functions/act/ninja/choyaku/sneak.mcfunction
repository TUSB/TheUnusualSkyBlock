##############################
### 跳躍スニーク
##############################

scoreboard players set @s[nbt=!{active_effects:[{id:"minecraft:jump_boost"}]}] Choyaku 0
scoreboard players add @s Choyaku 1

execute if score _ Level matches 1 run scoreboard players set _ Choyaku 05
execute if score _ Level matches 2 run scoreboard players set _ Choyaku 15
execute if score _ Level matches 3 run scoreboard players set _ Choyaku 25
execute if score _ Level matches 4 run scoreboard players set _ Choyaku 35

scoreboard players operation @s Choyaku < _ Choyaku

effect clear @s minecraft:jump_boost
execute if score @s Choyaku matches 1 run effect give @s minecraft:jump_boost 5 0
execute if score @s Choyaku matches 2 run effect give @s minecraft:jump_boost 5 1
execute if score @s Choyaku matches 3 run effect give @s minecraft:jump_boost 5 2
execute if score @s Choyaku matches 4 run effect give @s minecraft:jump_boost 5 3
execute if score @s Choyaku matches 5 run effect give @s minecraft:jump_boost 5 4
execute if score @s Choyaku matches 6 run effect give @s minecraft:jump_boost 5 5
execute if score @s Choyaku matches 7 run effect give @s minecraft:jump_boost 5 6
execute if score @s Choyaku matches 8 run effect give @s minecraft:jump_boost 5 7
execute if score @s Choyaku matches 9 run effect give @s minecraft:jump_boost 5 8
execute if score @s Choyaku matches 10 run effect give @s minecraft:jump_boost 5 9
execute if score @s Choyaku matches 11 run effect give @s minecraft:jump_boost 5 10
execute if score @s Choyaku matches 12 run effect give @s minecraft:jump_boost 5 11
execute if score @s Choyaku matches 13 run effect give @s minecraft:jump_boost 5 12
execute if score @s Choyaku matches 14 run effect give @s minecraft:jump_boost 5 13
execute if score @s Choyaku matches 15 run effect give @s minecraft:jump_boost 5 14
execute if score @s Choyaku matches 16 run effect give @s minecraft:jump_boost 5 15
execute if score @s Choyaku matches 17 run effect give @s minecraft:jump_boost 5 16
execute if score @s Choyaku matches 18 run effect give @s minecraft:jump_boost 5 17
execute if score @s Choyaku matches 19 run effect give @s minecraft:jump_boost 5 18
execute if score @s Choyaku matches 20 run effect give @s minecraft:jump_boost 5 19
execute if score @s Choyaku matches 21 run effect give @s minecraft:jump_boost 5 20
execute if score @s Choyaku matches 22 run effect give @s minecraft:jump_boost 5 21
execute if score @s Choyaku matches 23 run effect give @s minecraft:jump_boost 5 22
execute if score @s Choyaku matches 24 run effect give @s minecraft:jump_boost 5 23
execute if score @s Choyaku matches 25 run effect give @s minecraft:jump_boost 5 24
execute if score @s Choyaku matches 26 run effect give @s minecraft:jump_boost 5 25
execute if score @s Choyaku matches 27 run effect give @s minecraft:jump_boost 5 26
execute if score @s Choyaku matches 28 run effect give @s minecraft:jump_boost 5 27
execute if score @s Choyaku matches 29 run effect give @s minecraft:jump_boost 5 28
execute if score @s Choyaku matches 30 run effect give @s minecraft:jump_boost 5 29
execute if score @s Choyaku matches 31 run effect give @s minecraft:jump_boost 5 30
execute if score @s Choyaku matches 32 run effect give @s minecraft:jump_boost 5 31
execute if score @s Choyaku matches 33 run effect give @s minecraft:jump_boost 5 32
execute if score @s Choyaku matches 34 run effect give @s minecraft:jump_boost 5 33
execute if score @s Choyaku matches 35 run effect give @s minecraft:jump_boost 5 34

#インターバル設定
scoreboard players set @s Interval 5
#演出
function makeup:skill/act/ninja/choyaku/sneak
