##############################
### ぷちブラック待機
##############################

execute if score @s CarrotContinue matches 01..03 run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 0.2 0.2 0.2 0 6 force
execute if score @s CarrotContinue matches 04..06 run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 0.4 0.4 0.4 0 8 force
execute if score @s CarrotContinue matches 07..09 run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust 0.7 0 0.7 3 ~ ~ ~ 0.6 0.6 0.6 0 10 force
execute if score @s CarrotContinue matches 10..12 run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust 0.5 0 0.5 3 ~ ~ ~ 0.8 0.8 0.8 0 12 force
execute if score @s CarrotContinue matches 13..15 run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust 0.5 0 0.5 3 ~ ~ ~ 1.0 1.0 1.0 0 14 force
execute if score @s CarrotContinue matches 16..18 run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust 0.5 0 0.5 3 ~ ~ ~ 1.2 1.2 1.2 0 16 force
execute if score @s CarrotContinue matches 19..21 run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust -1 0 -1 3.2 ~ ~ ~ 1.4 1.4 1.4 0 18 force
execute if score @s CarrotContinue matches 22..24 run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust -1 0 -1 3.4 ~ ~ ~ 1.6 1.6 1.6 0 22 force
execute if score @s CarrotContinue matches 25..27 run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust -1 0 -1 3.6 ~ ~ ~ 1.8 1.8 1.8 0 26 force
execute if score @s CarrotContinue matches 28.. run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust -1 0 -1 3.8 ~ ~ ~ 2 2 2 0 30 force
execute if score @s CarrotContinue matches 28.. run execute anchored eyes positioned ^ ^ ^5 run particle minecraft:dust 100000000 2 1 3 ~ ~ ~ 2 2 2 0 10 force
execute as @a[distance=..48] at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.3 2
effect give @s minecraft:slowness 1 127 true
