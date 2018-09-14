##############################
### 特定のエンティティまたは座標に向かったときの向きをスコアにセットする
##############################

### Usage: execute as Source at Destination run function this
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[CalcMarker],Particle:"minecraft:block minecraft:air"}
### Get Pos of Destination
execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run function calc_manager:get/pos1
### Get Pos of Target
tp @e[distance=..0.1,tag=CalcMarker,limit=1] ^ ^ ^ facing entity @s
execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run tp @s ^ ^ ^1
execute as @e[distance=..1.1,tag=CalcMarker,limit=1] at @s run function calc_manager:get/pos2
kill @e[distance=..1.1,tag=CalcMarker,limit=1]
### Get Direction
function calc_manager:subtract/1-2
