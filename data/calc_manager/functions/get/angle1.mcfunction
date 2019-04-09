##############################
### 特定のエンティティまたは座標に向かったときの傾きをスコアにセットする
##############################

# summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[CalcMarker],Particle:"minecraft:block minecraft:air"}
# ### Get Rotation from source to destination
# tp @e[distance=..0.1,tag=CalcMarker,limit=1] ^ ^ ^ facing entity @s
# execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run tp @s ^ ^ ^ facing ^ ^ ^-1
# execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run function calc_manager:get/rotation1
# kill @e[distance=..0.1,tag=CalcMarker,limit=1]

### Usage: execute as Source at Destination run function this
execute facing entity @s feet facing ^ ^ ^-1 positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ^ ^ ^1 ~ ~
execute as 0-0-0-0-0 run function calc_manager:get/rotation1
