##############################
### ファランクス適用
##############################

execute if score $ActiveSkill Global matches 12011 run effect give @s minecraft:resistance 180 1
execute if score $ActiveSkill Global matches 12012 run effect give @s minecraft:resistance 180 2
execute if score $ActiveSkill Global matches 12013..12014 run effect give @s minecraft:resistance 180 3
execute if score $ActiveSkill Global matches 12014 run effect give @s minecraft:absorption 180 19

###---演出---Start
playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 0.8 2
playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 0.8 1.6
playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 0.8 1.2
particle minecraft:enchanted_hit ~ ~1.8 ~ 0.7 0.7 0.7 0 40 force @a[tag=ShowParticles]
###---演出---End
