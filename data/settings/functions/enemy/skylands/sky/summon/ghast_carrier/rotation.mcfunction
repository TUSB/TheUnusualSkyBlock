#Function
execute positioned ~ ~16 ~ run function calc:geometry/tp_00002
execute at @s facing entity 0-0-0-0-2 feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^19 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute as 0-0-0-0-2 run function calc:geometry/return_marker
