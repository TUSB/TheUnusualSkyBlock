##############################
### レビテトジャンプ
##############################

scoreboard players operation $ChoyakuScore Global = @s Choyaku
scoreboard players operation $ChoyakuScore Global /= $5 Const

effect clear @s minecraft:levitation
execute if score $ChoyakuScore Global matches 0 run effect give @s minecraft:levitation 1 1 false
execute if score $ChoyakuScore Global matches 1 run effect give @s minecraft:levitation 1 3 false
execute if score $ChoyakuScore Global matches 2 run effect give @s minecraft:levitation 1 5 false
execute if score $ChoyakuScore Global matches 3 run effect give @s minecraft:levitation 1 7 false
execute if score $ChoyakuScore Global matches 4 run effect give @s minecraft:levitation 1 9 false
execute if score $ChoyakuScore Global matches 5 run effect give @s minecraft:levitation 1 11 false
execute if score $ChoyakuScore Global matches 6 run effect give @s minecraft:levitation 1 13 false
execute if score $ChoyakuScore Global matches 7 run effect give @s minecraft:levitation 1 15 false

tag @s add LevitateJump
