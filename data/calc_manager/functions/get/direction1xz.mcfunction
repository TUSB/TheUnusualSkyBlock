##############################
### 特定のエンティティまたは座標に水平方向だけ向かったときの向きをスコアにセットする
##############################

### Usage: execute as Source at Destination run function this
# summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[CalcMarker],Particle:"minecraft:block minecraft:air"}
# ### Get Pos of Destination
# execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run function calc_manager:get/pos1
# ### Get Pos of Target 1
# tp @e[distance=..0.1,tag=CalcMarker,limit=1] ^ ^ ^ facing entity @s
# execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s rotated ~ 0 run tp @s ^ ^ ^1
# execute as @e[distance=..1.1,tag=CalcMarker,limit=1] at @s run function calc_manager:get/pos2
# ### Get Sign of Y
# execute store result score $SignY Global if entity @e[distance=..1.1,tag=CalcMarker,x_rotation=0..90,limit=1]
# scoreboard players operation $SignY Global *= $2 Const
# scoreboard players remove $SignY Global 1
# kill @e[distance=..1.1,tag=CalcMarker,limit=1]
# ### Get Direction
# function calc_manager:subtract/1-2


### Usage: execute as Source at Destination run function this
execute facing entity @s feet facing ^ ^ ^-1 positioned 0.0 0.0 0.0 rotated ~ 0 run tp 0-0-FF-0-FF ^ ^ ^1 ~ ~
execute as 0-0-FF-0-FF run function calc_manager:get/pos1
