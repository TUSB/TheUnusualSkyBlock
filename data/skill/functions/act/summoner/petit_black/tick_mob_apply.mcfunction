##############################
### サモン：ぷちブラック tick MOB適用
##############################

execute facing entity @s[tag=!Unmoved] feet in area:control_area positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 run function calc:geometry/tp_00000

execute store result score @s[tag=!Unmoved] Calc run data get entity @s Motion[0] 100
execute store result score @s[tag=!Unmoved] _ run data get entity 0-0-0-0-0 Pos[0] 100
execute store result entity @s[tag=!Unmoved] Motion[0] double 0.01 run scoreboard players operation @s Calc += @s _

execute store result score @s[tag=!Unmoved] Calc run data get entity @s Motion[1] 100
execute store result score @s[tag=!Unmoved] _ run data get entity 0-0-0-0-0 Pos[1] 100
execute store result entity @s[tag=!Unmoved] Motion[1] double 0.01 run scoreboard players operation @s Calc += @s _

execute store result score @s[tag=!Unmoved] Calc run data get entity @s Motion[2] 100
execute store result score @s[tag=!Unmoved] _ run data get entity 0-0-0-0-0 Pos[2] 100
execute store result entity @s[tag=!Unmoved] Motion[2] double 0.01 run scoreboard players operation @s Calc += @s _

function skill:damage/apply/
