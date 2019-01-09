##############################
### 叫び
##############################


execute as @a[distance=..8,gamemode=!spectator,gamemode=!creative] run function calc_manager:set_random
execute as @a[distance=..8,gamemode=!spectator,gamemode=!creative] if score @s Global matches 0..16383 run tag @s add screamTarget

###---演出---Start
playsound minecraft:entity.ghast.hurt master @a[tag=screamTarget] ~ ~ ~ 100 0
playsound minecraft:entity.ghast.hurt master @a[tag=screamTarget] ~ ~ ~ 100 0.25
playsound minecraft:entity.ghast.hurt master @a[tag=screamTarget] ~ ~ ~ 100 0.5
playsound minecraft:entity.ender_dragon.ambient master @a[tag=screamTarget] ~ ~ ~ 100 0
playsound minecraft:entity.ender_dragon.ambient master @a[tag=screamTarget] ~ ~ ~ 100 0.25
playsound minecraft:entity.ender_dragon.ambient master @a[tag=screamTarget] ~ ~ ~ 100 0.5
###---演出---End
scoreboard players reset @a[tag=screamTarget] Global
effect give @a[tag=screamTarget] minecraft:mining_fatigue 5 20
effect give @a[tag=screamTarget] minecraft:slowness 5 20
tag @a[tag=screamTarget] remove screamTarget
