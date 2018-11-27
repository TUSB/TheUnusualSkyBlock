##############################
### ジン・スピリット処理
##############################

tp @s ~ ~ ~ ~3 ~

execute if score $Second Count matches 1 if score @s SkillAttribute matches 100000.. run function skill_manager:black_mage/gin_spirit/summon
execute if score $Second Count matches 11 if score @s SkillAttribute matches 100000.. run function skill_manager:black_mage/gin_spirit/summon

###---演出---Start
particle minecraft:smoke ~ ~0.75 ~ 0.1 0.25 0.1 0.001 1 force @a[tag=ShowParticles]
particle minecraft:falling_dust minecraft:magenta_wool ~ ~6 ~ 6 1 6 1 3 force @a[tag=ShowParticles]
particle minecraft:witch ^ ^ ^8 0 0 0 1 0 force @a[tag=ShowParticles]
particle minecraft:witch ^8 ^ ^ 0 0 0 1 0 force @a[tag=ShowParticles]
particle minecraft:witch ^ ^ ^-8 0 0 0 1 0 force @a[tag=ShowParticles]
particle minecraft:witch ^-8 ^ ^ 0 0 0 1 0 force @a[tag=ShowParticles]
###---演出---End
