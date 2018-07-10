##############################
### 火遁発動
##############################

effect give @s minecraft:fire_resistance 180 49
execute if score @s SupportSkill matches 22032 run function skill_manager:ninja/katon/affinity/apply

###---演出---Start
###---演出---End
