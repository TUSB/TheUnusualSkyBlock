
execute as @e[tag=!Initialized,team=] run function second:initialize

execute if score $Active Global matches 0.. as @e[tag=!System] run function second:set_data

execute if score $Active Global matches 1.. as @e[type=!minecraft:player,tag=!System] at @s run function second:main_test

execute store result score $Entity Global if entity @e[tag=!System]
