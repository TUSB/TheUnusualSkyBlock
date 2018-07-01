##############################
### 魔人斬り３
##############################

###---演出---Start
execute if entity @s[nbt={HandItems:[{Count:1b}]}] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 2 0.707
particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0 30
###---演出---End

effect give @s minecraft:weakness 15 250
tp @s ~ ~-2 ~
execute as @s run data merge entity @s {HandItems:[],Motion:[0d,1.5d,0d]}
scoreboard players add @s Damage 20000
effect give @s minecraft:slow_falling 1 0
