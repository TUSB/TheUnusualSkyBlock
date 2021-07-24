##############################
### 風切ジャンプ
##############################

scoreboard players operation _ Calc = @s Choyaku
scoreboard players set _ _ 5
scoreboard players operation _ Calc /= _ _

effect clear @s minecraft:levitation
execute if score _ Calc matches 0 run effect give @s minecraft:levitation 1 1 false
execute if score _ Calc matches 1 run effect give @s minecraft:levitation 1 3 false
execute if score _ Calc matches 2 run effect give @s minecraft:levitation 1 5 false
execute if score _ Calc matches 3 run effect give @s minecraft:levitation 1 7 false
execute if score _ Calc matches 4 run effect give @s minecraft:levitation 1 9 false
execute if score _ Calc matches 5 run effect give @s minecraft:levitation 1 11 false
execute if score _ Calc matches 6 run effect give @s minecraft:levitation 1 13 false
execute if score _ Calc matches 7 run effect give @s minecraft:levitation 1 15 false

tag @s add KazakiriJump
