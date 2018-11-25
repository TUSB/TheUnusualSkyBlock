##############################
### レベルアップ
##############################

scoreboard players add @s Level 1
scoreboard players operation @s Exp -= @s RequiredExp
scoreboard players operation @s RequiredExp = @s Level
scoreboard players operation @s RequiredExp /= $10 Const
scoreboard players add @s RequiredExp 5
scoreboard players operation @s RequiredExp *= @s Level
