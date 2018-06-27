##############################
### ウィークペイント命中
##############################

###---演出---Start
particle minecraft:firework ~ ~1.5 ~ 0.5 0.8 0.5 0 30 force
playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 5 0.5
###---演出---End

execute if score @s ProjectileSkill matches 81011 run effect give @s minecraft:weakness 30 4
execute if score @s ProjectileSkill matches 81012 run effect give @s minecraft:weakness 120 9
