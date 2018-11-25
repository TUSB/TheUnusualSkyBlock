##############################
### レベルアップループ
##############################

scoreboard players add @s Level 1
scoreboard players operation $Currentlevel Global = @s Level
scoreboard players operation $Currentlevel Global < $50 Const
scoreboard players operation @s Exp -= @s RequiredExp
scoreboard players operation @s RequiredExp = $Currentlevel Global
scoreboard players operation @s RequiredExp < $50 Const
scoreboard players operation @s RequiredExp /= $10 Const
scoreboard players add @s RequiredExp 5
scoreboard players operation @s RequiredExp *= $Currentlevel Global

execute if score @s Exp >= @s RequiredExp run function main:status/level_up_loop
