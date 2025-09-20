#> makeup:skill/act/ninja/issen/tick
#
# 一閃毎tick演出
playsound minecraft:entity.drowned.shoot player @a[distance=..16] ~ ~ ~ 3 1.2
particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0 10 force @a[tag=ShowParticles]
particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 10 force @a[tag=ShowParticles]
