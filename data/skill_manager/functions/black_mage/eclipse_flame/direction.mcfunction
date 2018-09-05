##############################
### エクリプスフレイムパーティクル処理
##############################

###
execute facing entity @e[distance=..10,tag=EclipseFlameCore,sort=nearest,limit=1] feet run tp @s ^0.4 ^0.1 ^ facing entity @e[distance=..16,tag=EclipseFlameCore,sort=nearest,limit=1]
execute unless entity @e[distance=..10,tag=EclipseFlameCore,limit=1] run kill @s
kill @s[x_rotation=70..90]
particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
