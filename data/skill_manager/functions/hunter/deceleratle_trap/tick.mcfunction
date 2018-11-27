##############################
### ボミオストラップ継続
##############################

scoreboard players operation $Modifier Global = @s SkillAttribute
execute as @e[distance=..12,tag=Mob] run function skill_manager:hunter/deceleratle_trap/apply

###---演出---Start
particle minecraft:falling_dust minecraft:diamond_block ~ ~0.7 ~ 1.7 0 1.7 1 3 force @a[tag=ShowParticles]
particle minecraft:falling_dust minecraft:lapis_block ~ ~0.5 ~ 2.5 0 2.5 1 6 force @a[tag=ShowParticles]
###---演出---End
