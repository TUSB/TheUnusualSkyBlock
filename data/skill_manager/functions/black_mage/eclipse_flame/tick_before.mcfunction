##############################
### エクリプスフレイム前処理
##############################

###着弾時リセット
execute if entity @s[nbt=!{FallDistance:0f}] run scoreboard players set @s EclipseRadius 1000
execute if entity @s[nbt=!{FallDistance:0f}] run data merge entity @s {NoGravity:true,FallDistance:0f,Rotation:[0d,0d]}

###---演出---Start
particle minecraft:dust 100000000 2 0 2 ~ ~ ~ 0.5 0.5 0.5 1 10 force
execute if score @s EclipseRadius matches 1000 run particle minecraft:dust 100000000 2 0 2 ~ ~ ~ 0.8 0.8 0.8 1 50 force
execute if score @s EclipseRadius matches 1000 run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 100 force
execute if score @s EclipseRadius matches 1000 run playsound minecraft:entity.wither.shoot master @a[distance=..32] ~ ~ ~ 3 0.6
execute if score @s EclipseRadius matches 1000 run playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~ 3 1
###---演出---End
