#> player:burst/break/damage/spawner/once

function makeup:player/burst/break/spawner

execute store result score @s _ run data get entity @s item.components."minecraft:custom_data".Count
scoreboard players operation @s _ -= _ _
execute store result entity @s item.components."minecraft:custom_data".Count float 1 run scoreboard players get @s _
execute unless score @s _ matches 1.. run function enemy:break_spawner/break
execute unless score @s _ matches 1.. run setblock ~ ~ ~ air
