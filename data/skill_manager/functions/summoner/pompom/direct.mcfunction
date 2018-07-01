##############################
### ぽむぽむ花火直撃
##############################

scoreboard players add @s Damage 60000
###---演出---Start
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 5 2
particle minecraft:dust 100000000 0 0 1.5 ~ ~1 ~ 0.3 0.3 0.3 1 9 force
particle minecraft:dust 0 0 100000000 1.5 ~ ~1 ~ 0.3 0.3 0.3 1 9 force
particle minecraft:dust 0 100000000 0 1.5 ~ ~1 ~ 0.3 0.3 0.3 1 9 force
###---演出---End
