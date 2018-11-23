##############################
### ルカナントラップ継続
##############################

scoreboard players operation @e[distance=..12,tag=Mob,scores={Damage=0..}] Damage *= @s SkillAttribute
scoreboard players operation @e[distance=..12,tag=Mob,scores={Damage=0..}] Damage /= $100 Const

###---演出---Start
particle minecraft:falling_dust minecraft:pink_wool ~ ~0.7 ~ 1.7 0 1.7 1 3 force
particle minecraft:falling_dust minecraft:red_wool ~ ~0.5 ~ 2.5 0 2.5 1 6 force
###---演出---End
