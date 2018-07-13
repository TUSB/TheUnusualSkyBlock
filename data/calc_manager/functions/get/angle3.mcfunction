##############################
### 特定のエンティティまたは座標に向かったときの傾きをスコアにセットする
##############################

### Usage: execute as Source at Destination run function this
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,Marker:true,NoGravity:true,Tags:[CalcMarker]}
### Get Rotation from source to destination
tp @e[distance=..0.1,tag=CalcMarker,limit=1] ^ ^ ^ facing entity @s
execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run tp @s ^ ^ ^ facing ^ ^ ^-1
execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run function calc_manager:get/rotation3
kill @e[distance=..0.1,tag=CalcMarker,limit=1]
