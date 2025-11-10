#> makeup:skill/act/ninja/shuriken/hit
#
# 手裏剣命中演出
particle minecraft:item{item:{id:nether_wart}} ~ ~1 ~ 0.3 0.5 0.3 0.2 100 force
particle minecraft:item{item:{id:redstone_block}} ~ ~1 ~ 0.1 0.1 0.1 0.2 30 force
execute as @a[distance=..32] at @s run playsound minecraft:entity.wither.shoot player @s ~ ~ ~ 0.6 2
playsound minecraft:block.bubble_column.upwards_inside player @a[distance=..32] ~ ~ ~ 3 2
