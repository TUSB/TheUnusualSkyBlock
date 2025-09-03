#> makeup:skill/act/ninja/issen/apply
#
# 一閃ヒット演出
data merge entity @s {Motion:[0d,0.5d,0d]}
particle minecraft:item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.3 0.5 0.3 0.2 50 force @a[tag=ShowParticles]
particle minecraft:item{item:"minecraft:redstone_block"} ~ ~1 ~ 0.1 0.1 0.1 0.2 15 force @a[tag=ShowParticles]
playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 0.6 2
playsound minecraft:block.bubble_column.upwards_inside hostile @a[distance=..16] ~ ~ ~ 3 2
