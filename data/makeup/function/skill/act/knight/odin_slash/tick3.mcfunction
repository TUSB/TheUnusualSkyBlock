#> makeup:skill/act/knight/odin_slash/tick3
#
# 斬鉄剣演出
playsound minecraft:entity.player.attack.strong player @a[distance=..32] ~ ~ ~ 3 1.56
execute positioned ^ ^ ^2 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^4 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^6 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^8 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^10 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^12 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
execute positioned ^ ^ ^14 run particle minecraft:crit ~ ~ ~ 0.2 0 0.2 0 10 force
tp @s ~ ~ ~ ~-12 ~-15
