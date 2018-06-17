##############################
### ワイルドフレアダメージ&演出
##############################

###ダメージ付与
scoreboard players operation @e[distance=..5,tag=Mob] Damage += @s SkillAttribute
###---演出---Start
particle minecraft:flame ~ ~ ~ 2 1 2 0.01 2 force
###---演出---End
