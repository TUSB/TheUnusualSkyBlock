##############################
### 水遁発動
##############################

effect give @s minecraft:dolphins_grace 180 49
effect give @s minecraft:conduit_power 180 49
effect give @s minecraft:water_breathing 180 49
execute if score @s SupportSkill matches 22022 run function skill_manager:ninja/suiton/affinity/apply

###---演出---Start
###---演出---End
