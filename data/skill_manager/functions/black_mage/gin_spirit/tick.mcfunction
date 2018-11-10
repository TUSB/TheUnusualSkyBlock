##############################
### ジン・スピリット処理
##############################

execute if score $Second Count matches 1 positioned ~ ~0.5 ~ if entity @e[tag=Mob,distance=..4] run function skill_manager:black_mage/gin_spirit/damage
execute if score $Second Count matches 11 positioned ~ ~0.5 ~ if entity @e[tag=Mob,distance=..4] run function skill_manager:black_mage/gin_spirit/damage

###---演出---Start
particle minecraft:smoke ~ ~0.75 ~ 0.1 0.25 0.1 0.001 1 force
particle minecraft:falling_dust minecraft:magenta_wool ~ ~1 ~ 2 0 2 1 1 force
###---演出---End
