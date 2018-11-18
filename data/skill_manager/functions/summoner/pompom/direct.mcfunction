##############################
### ぽむぽむ花火直撃
##############################

scoreboard players operation @s SkillAttribute *= $15 Const
scoreboard players operation @s Damage > @s SkillAttribute
###---演出---Start
playsound minecraft:entity.firework_rocket.blast master @a[distance=..48] ~ ~ ~ 4 0
playsound minecraft:entity.firework_rocket.twinkle_far master @a[distance=..48] ~ ~ ~ 4 0.8
particle minecraft:dust 100000000 0 0 1.5 ~ ~1 ~ 0.5 0.5 0.5 1 15 force
particle minecraft:dust 0 0 100000000 1.5 ~ ~1 ~ 0.5 0.5 0.5 1 15 force
particle minecraft:dust 0 100000000 0 1.5 ~ ~1 ~ 0.5 0.5 0.5 1 15 force
particle minecraft:smoke ~ ~1 ~ 0.8 0.8 0.8 0.03 50 force
###---演出---End
