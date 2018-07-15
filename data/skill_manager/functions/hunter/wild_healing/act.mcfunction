##############################
### ワイルドヒーリング発動
##############################

execute if score @s ModeSkill matches 31041 run scoreboard players operation @s LastFoodLevel *= $1 Const
execute if score @s ModeSkill matches 31042 run scoreboard players operation @s LastFoodLevel *= $2 Const
execute if score @s ModeSkill matches 31043 run scoreboard players operation @s LastFoodLevel *= $3 Const

execute if score @s ModeSkill matches 31042 run function skill_manager:white_mage/clear/cure/level2
execute if score @s ModeSkill matches 31043 run function skill_manager:white_mage/clear/cure/level3

scoreboard players operation @s HealthHealing += @s LastFoodLevel

###---演出---Start
###---演出---End
