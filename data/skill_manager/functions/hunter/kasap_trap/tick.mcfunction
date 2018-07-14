##############################
### ルカナントラップ継続
##############################

scoreboard players operation @e[distance=..5,tag=Mob,scores={Damage=0..}] Damage *= @s SkillAttribute
scoreboard players operation @e[distance=..5,tag=Mob,scores={Damage=0..}] Damage /= $100 Const

###---演出---Start
###---演出---End
