##############################
### 特定のエンティティに向かったときの向きをスコアにセットする
##############################

### Usage: execute as Source at Destination run function this
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,Marker:true,NoGravity:true,Tags:[CalcMarker]}
### Get Pos of Destination
execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run function calc_manager:get/pos1
### Get Pos of Target
tp @e[distance=..0.1,tag=CalcMarker,limit=1] ^ ^ ^ facing entity @s
execute as @e[distance=..0.1,tag=CalcMarker,limit=1] at @s run tp @s ^ ^ ^1
execute as @e[distance=..1.1,tag=CalcMarker,limit=1] at @s run function calc_manager:get/pos2
kill @e[distance=..1.1,tag=CalcMarker,limit=1]
### Get Direction
scoreboard players operation $X1 Global -= $X2 Global
scoreboard players operation $Y1 Global -= $Y2 Global
scoreboard players operation $Z1 Global -= $Z2 Global
