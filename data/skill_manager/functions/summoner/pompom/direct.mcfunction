##############################
### ぽむぽむ花火直撃
##############################

scoreboard players operation @s SkillAttribute *= $15 Const
scoreboard players operation @s Damage += @s SkillAttribute
###---演出---Start
playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..48] ~ ~ ~ 4 2
playsound minecraft:entity.firework_rocket.blast master @a[distance=..48] ~ ~ ~ 4 0
particle minecraft:dust 100000000 0 0 1.5 ~ ~1 ~ 0.3 0.3 0.3 1 9 force
particle minecraft:dust 0 0 100000000 1.5 ~ ~1 ~ 0.3 0.3 0.3 1 9 force
particle minecraft:dust 0 100000000 0 1.5 ~ ~1 ~ 0.3 0.3 0.3 1 9 force
###---演出---End
