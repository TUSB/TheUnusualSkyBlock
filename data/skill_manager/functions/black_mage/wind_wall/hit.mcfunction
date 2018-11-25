##############################
### ウィンドウォール 竜巻命中
##############################

###---演出---Start
playsound minecraft:item.trident.riptide_3 master @a[distance=..48] ~ ~ ~ 4 1
particle minecraft:sweep_attack ~ ~1 ~ 0.1 1 0.1 5 15 force
particle minecraft:dust 0.3 1 0.1 1.5 ~ ~2 ~ 0.25 2 0.25 1 20 force
###---演出---End

scoreboard players operation @s[tag=Mob] Damage > @s SkillAttribute
