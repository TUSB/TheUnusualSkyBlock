#Function
execute positioned ~ ~16 ~ run function calc:geometry/tp_00002
execute store result score _ _ run data get entity 0-0-0-0-2 Pos[1] 100
execute store result score @s _ run data get entity @s Pos[1] 100
scoreboard players set _ Calc 100
scoreboard players add _ _ 200
execute if score @s _ > _ _ at @s positioned ~ ~-0.125 ~ run function settings:enemy/skylands/sky/summon/ghast_carrier/condition
execute if score _ Calc matches 0 at @s run tp @s ~ ~-0.125 ~ ~ ~
scoreboard players set _ Calc 100
scoreboard players remove _ _ 400
execute if score @s _ < _ _ at @s positioned ~ ~5.125 ~ run function settings:enemy/skylands/sky/summon/ghast_carrier/condition
execute at @s facing entity 0-0-0-0-2 feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^19 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score _ Calc matches 0 at @s run tp @s ~ ~0.125 ~ ~ ~
execute as 0-0-0-0-2 run function calc:geometry/return_marker
