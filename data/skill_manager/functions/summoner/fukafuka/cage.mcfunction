##############################
### ふかふかケージ経過
##############################

kill @s[nbt={PortalCooldown:0}]
tag @e[distance=..4.5,type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:spawner_minecart,type=!minecraft:falling_block,tag=!Cage] add Caught
tag @e[distance=..4.5,tag=Caught] add DelayedTask

execute store result score $Flag Global run time query gametime
scoreboard players operation $Flag Global %= $2 Const

execute if score $Flag Global matches 0 rotated 0 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 30 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 60 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 90 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 120 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 150 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 180 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -150 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -120 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -90 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -60 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -30 75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 

execute if score $Flag Global matches 1 rotated 0 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 30 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 60 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 90 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 120 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 150 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 180 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -150 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -120 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -90 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -60 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -30 45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 

execute if score $Flag Global matches 0 rotated 0 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 30 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 60 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 90 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 120 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 150 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 180 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -150 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -120 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -90 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -60 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -30 15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 

execute if score $Flag Global matches 1 rotated 0 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 30 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 60 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 90 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 120 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 150 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 180 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -150 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -120 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -90 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -60 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -30 -15 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 

execute if score $Flag Global matches 0 rotated 0 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 30 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 60 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 90 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 120 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 150 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated 180 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -150 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -120 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -90 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -60 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 0 rotated -30 -45 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 

execute if score $Flag Global matches 1 rotated 0 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 30 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 60 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 90 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 120 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 150 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated 180 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -150 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -120 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -90 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -60 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
execute if score $Flag Global matches 1 rotated -30 -75 run particle minecraft:cloud ^ ^ ^4.5 0.3 0.3 0.3 0 1 force 
