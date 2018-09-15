

execute at @e[tag=CircleCore,sort=nearest,limit=1] facing entity @s feet positioned ^ ^ ^10 run summon minecraft:armor_stand ~ ~ ~ {Tags:[CircleEdge,Initializing],NoGravity:true}
execute as @e[tag=Initializing] at @s run function calc_manager:set/random_rotation
execute as @e[tag=Initializing] at @s run function calc_manager:get/rotation1
scoreboard players operation $RX1 Global %= $10000 Const
scoreboard players add $RX1 Global 50
execute as @e[tag=Initializing] at @s run function calc_manager:set/rotation1

tag @e[tag=Initializing,limit=1] remove Initializing
