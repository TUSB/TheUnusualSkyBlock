#> makeup:skill/act/hunter/radar_vision/return0
#
# レーダーヴィジョン復帰
execute positioned as @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 25 force
execute positioned as @s run playsound minecraft:block.beacon.deactivate player @a[distance=..16] ~ ~ ~ 1 2
