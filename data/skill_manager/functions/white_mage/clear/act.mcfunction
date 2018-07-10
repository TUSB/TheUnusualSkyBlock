##############################
### キアリク発動
##############################

execute if score @s SupportSkill matches 42011 run function skill_manager:white_mage/clear/cure/level2
execute if score @s SupportSkill matches 42012 run function skill_manager:white_mage/clear/cure/level3
execute if score @s SupportSkill matches 42013 run function skill_manager:white_mage/clear/cure/level4

###---演出---Start
say 発動！
###---演出---End
