##############################
### エンティティ維持
##############################

execute store result score $UpVector Local run data get entity @s Motion[1] 100
execute if score $UpVector Local matches ..-10 run tag @s add Garbage

# [[Obsolete]]
# function calc_manager:get/motion1s
# execute store result entity @s Pos[0] double 0.001 run data get entity @s Passengers[0].Pos[0] 1000
# execute store result entity @s Pos[1] double 0.001 run data get entity @s Passengers[0].Pos[1] 1000
# execute store result entity @s Pos[2] double 0.001 run data get entity @s Passengers[0].Pos[2] 1000
# execute at @s run tp @s ~ ~-0.00001 ~
# execute at @s as @e[distance=..0.01,tag=Cargo] unless entity @s[distance=0] run data merge entity @s {PortalCooldown:40,Age:0,Time:558}
# execute store result entity @s Pos[0] double 0.001 run data get entity @s Passengers[1].Pos[0] 1000
# execute store result entity @s Pos[1] double 0.001 run data get entity @s Passengers[1].Pos[1] 1000
# execute store result entity @s Pos[2] double 0.001 run data get entity @s Passengers[1].Pos[2] 1000
# execute at @s run tp @s ~ ~-0.00001 ~
# execute at @s as @e[distance=..0.01,tag=Cargo] unless entity @s[distance=0] run data merge entity @s {PortalCooldown:40,Age:0,Time:558}
# tp @s ~ ~ ~
# function calc_manager:set/motion1
