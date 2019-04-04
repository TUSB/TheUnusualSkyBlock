##############################
### エクリプスフレイム前処理
##############################

###着弾時リセット
execute unless entity @e[distance=..1,tag=EclipseFlameBullet,limit=1] run scoreboard players set @s EclipseRadius 1000

###---演出---Start
particle minecraft:dust 100000000 2 0 2 ~ ~ ~ 0.5 0.5 0.5 1 10 force @a[tag=ShowParticles]
execute if score @s EclipseRadius matches 1000 run particle minecraft:dust 100000000 2 0 2 ~ ~ ~ 0.8 0.8 0.8 1 50 force @a[tag=ShowParticles]
execute if score @s EclipseRadius matches 1000 run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 100 force @a[tag=ShowParticles]
execute if score @s EclipseRadius matches 1000 run playsound minecraft:entity.wither.shoot master @a[distance=..32] ~ ~ ~ 3 0.6
execute if score @s EclipseRadius matches 1000 run playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~ 3 1
###---演出---End

execute if score @s EclipseRadius matches 1000 run tp @s ~ ~-2 ~ ~ ~
