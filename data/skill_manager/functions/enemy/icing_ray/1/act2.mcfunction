##############################
### アイシングレイ
##############################


playsound minecraft:item.trident.thunder master @a[distance=..16] ~ ~ ~ 0.5 2 0.3
playsound minecraft:block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 0.6 0.7 0.3
function entity_manager:lock/lock
effect give @s minecraft:unluck 1 1 true
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0f,Particle:"minecraft:block minecraft:air",Tags:["Initializing"]}
scoreboard players set $LoopCount Global 20
execute at @s anchored eyes run tp @e[tag=Initializing,limit=1] ^ ^ ^ ~ ~
execute rotated as @s as @e[tag=Initializing,limit=1] positioned as @s run function skill_manager:enemy/icing_ray/1/loop
tag @e[tag=Initializing,limit=1] remove Initializing 
tag @a[tag=Applied] remove Applied