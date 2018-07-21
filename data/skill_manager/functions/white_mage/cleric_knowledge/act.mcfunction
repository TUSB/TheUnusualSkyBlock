##############################
### クレリックナレッジ発動
##############################

###クレリックナレッジ設定
execute if score @s SupportSkill matches 42051 as @a[distance=..15] at @s run effect give @s minecraft:luck 60 4
execute if score @s SupportSkill matches 42052 as @a[distance=..15] at @s run effect give @s minecraft:luck 60 9
execute if score @s SupportSkill matches 42053 as @a[distance=..15] at @s run effect give @s minecraft:luck 60 14
scoreboard players operation @a[distance=..15] ClericKnowledge > $60 Const

###---演出---Start
###---演出---End
