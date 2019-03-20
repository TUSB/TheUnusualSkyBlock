##############################
### アイシングレイ
##############################


playsound minecraft:item.trident.thunder master @a[distance=..16] ~ ~ ~ 0.5 2 0.3
playsound minecraft:block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 0.6 0.7 0.3
function entity_manager:lock/lock
effect give @s minecraft:unluck 1 1 true
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:40,Radius:0f,Particle:"minecraft:block minecraft:air",Tags:["Initializing","CallOnFin","CooldownRequired","Event","IcingRay"],PortalCooldown:20s}
execute at @s anchored eyes run tp @e[tag=Initializing,limit=1] ^ ^ ^ ~ ~
tag @e[tag=Initializing,limit=1] remove Initializing
