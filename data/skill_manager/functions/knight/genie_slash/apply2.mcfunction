##############################
### 魔人斬り２
##############################

###---演出---Start
execute if entity @s[nbt={HandItems:[{Count:1b}]}] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 2 0.707
particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0 30
###---演出---End

effect give @s minecraft:weakness 15 200
data merge entity @s {HandItems:[]}
scoreboard players add @s Damage 15000
