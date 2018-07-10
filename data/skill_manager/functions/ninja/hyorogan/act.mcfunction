##############################
### 兵糧丸発動
##############################

execute if score @s SupportSkill matches 22051 run effect give @s minecraft:saturation 1 1
execute if score @s SupportSkill matches 22051 run function skill_manager:white_mage/clear/cure/level2

execute if score @s SupportSkill matches 22052 run effect give @s minecraft:saturation 1 5
execute if score @s SupportSkill matches 22052 run function skill_manager:white_mage/clear/cure/level3

###---演出---Start
say 発動！
###---演出---End
