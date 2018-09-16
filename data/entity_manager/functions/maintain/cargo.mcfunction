##############################
### エンティティ維持
##############################

function calc_manager:get/motion1
execute store result entity @s Pos[0] double 0.001 run data get entity @s Passengers[0].Pos[0] 1000
execute store result entity @s Pos[1] double 0.001 run data get entity @s Passengers[0].Pos[1] 1000
execute store result entity @s Pos[2] double 0.001 run data get entity @s Passengers[0].Pos[2] 1000
execute at @s as @e[distance=..0.01,tag=Cargo] unless entity @s[distance=0] run data merge entity @s {PortalCooldown:40,Age:0,Time:560}
tp @s ~ ~ ~
function calc_manager:set/motion1
