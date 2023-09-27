
execute facing entity @e[type=arrow,tag=!Initialized,distance=..5] feet in area:control_area positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run function calc:geometry/tp_00000

scoreboard players set _ _ 0
scoreboard players set # Calc -1
execute store result score _ Calc run data get entity @e[type=arrow,tag=!Initialized,distance=..5,limit=1] Motion[0] 100
execute store result score # _ run data get entity 0-0-0-0-0 Pos[0] 10000
scoreboard players operation _ Calc /= # _
execute if score _ Calc matches ..-1 run scoreboard players operation _ Calc *= # Calc
scoreboard players operation _ _ > _ Calc
execute store result score _ Calc run data get entity @e[type=arrow,tag=!Initialized,distance=..5,limit=1] Motion[1] 100
execute store result score # _ run data get entity 0-0-0-0-0 Pos[1] 10000
scoreboard players operation _ Calc /= # _
execute if score _ Calc matches ..-1 run scoreboard players operation _ Calc *= # Calc
scoreboard players operation _ _ > _ Calc
execute store result score _ Calc run data get entity @e[type=arrow,tag=!Initialized,distance=..5,limit=1] Motion[2] 100
execute store result score # _ run data get entity 0-0-0-0-0 Pos[2] 10000
scoreboard players operation _ Calc /= # _
execute if score _ Calc matches ..-1 run scoreboard players operation _ Calc *= # Calc
scoreboard players operation _ _ > _ Calc

execute as 0-0-0-0-0 run function calc:geometry/return_marker
