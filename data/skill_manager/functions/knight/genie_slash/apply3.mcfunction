##############################
### 魔人斬り３
##############################

###---演出---Start
execute if entity @e[distance=..5,tag=Mob,nbt={HandItems:[{Count:1b}]},limit=1] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 2 0.707
execute at @e[distance=..5,tag=Mob] run particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0 30
###---演出---End

effect give @e[distance=..5,tag=Mob] minecraft:weakness 15 250
execute as @e[distance=..5,tag=Mob] run data merge entity @s {HandItems:[]}
scoreboard players add @e[distance=..5,tag=Mob] Damage 20000
