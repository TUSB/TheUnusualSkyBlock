##############################
### ワイルドフレア演出
##############################

###演出
scoreboard players add @e[distance=..5,tag=Mob] Damage 300
particle minecraft:flame ~ ~ ~ 2 1 2 0.01 2 force
#playsound minecraft:block.fire.ambient master @a ~ ~ ~ 5 0.5
