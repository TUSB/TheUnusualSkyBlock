##############################
### 特定のエンティティまたは座標に向かったときの傾きをスコアにセットする
##############################

### Usage: execute as Source at Destination run function this
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[CalcMarker],Particle:"minecraft:block minecraft:air"}
### Get Rotation from source to destination
tp @e[distance=..0.1,tag=CalcMarker,limit=1] ^ ^ ^ facing entity @s
execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run tp @s ^ ^ ^ facing ^ ^ ^-1
execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run function calc_manager:get/rotation2
kill @e[distance=..0.1,tag=CalcMarker,limit=1]
