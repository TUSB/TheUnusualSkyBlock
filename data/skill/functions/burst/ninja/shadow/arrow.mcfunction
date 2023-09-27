data modify storage skill: BurstShadow.Motion set value [0d,0d,0d]

summon arrow ^ ^ ^
execute positioned as @s facing entity @e[tag=Enemy,distance=..32,limit=1] feet in area:control_area positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run function calc:geometry/tp_00000
execute unless entity @e[tag=Enemy,distance=..32] in area:control_area positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run function calc:geometry/tp_00000
# Motionの指定
execute store result score # _ run data get entity 0-0-0-0-0 Pos[0] 1000
execute store result storage skill: BurstShadow.Motion[0] double 0.00001 run scoreboard players operation # _ *= _ _
execute store result score # _ run data get entity 0-0-0-0-0 Pos[1] 1000
execute store result storage skill: BurstShadow.Motion[1] double 0.00001 run scoreboard players operation # _ *= _ _
execute store result score # _ run data get entity 0-0-0-0-0 Pos[2] 1000
execute store result storage skill: BurstShadow.Motion[2] double 0.00001 run scoreboard players operation # _ *= _ _

data modify entity @e[tag=!Initialized,distance=..0.01,limit=1] Motion set from storage skill: BurstShadow.Motion
data modify entity @e[tag=!Initialized,distance=..0.01,limit=1] Owner set from storage skill: BurstShadow.UUID

execute as 0-0-0-0-0 run function calc:geometry/return_marker
