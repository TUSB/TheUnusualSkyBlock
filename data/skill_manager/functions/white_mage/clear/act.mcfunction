##############################
### キアリク発動
##############################

execute if score @s SupportSkill matches 42011 unless score @s SneakTime matches ..0 run function skill_manager:white_mage/clear/cure/level2
execute if score @s SupportSkill matches 42012 unless score @s SneakTime matches ..0 run function skill_manager:white_mage/clear/cure/level3
execute if score @s SupportSkill matches 42013 unless score @s SneakTime matches ..0 run function skill_manager:white_mage/clear/cure/level5

execute if score @s SupportSkill matches 42011 if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill_manager:white_mage/clear/cure/level2
execute if score @s SupportSkill matches 42012 if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill_manager:white_mage/clear/cure/level3
execute if score @s SupportSkill matches 42013 if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill_manager:white_mage/clear/cure/level5

###---演出---Start
me キアリク！
###---演出---End
