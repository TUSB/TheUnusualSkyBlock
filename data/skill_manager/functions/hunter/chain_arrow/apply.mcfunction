##############################
### チェインアローヒット時連鎖
##############################

scoreboard players operation @s Damage += $Damage Global

###---演出---Start
particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0 60 force
playsound minecraft:entity.arrow.hit master @a ~ ~ ~ 5 0.5
###---演出---End
