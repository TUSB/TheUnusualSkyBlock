#> makeup:skill/act/ninja/mokuso/tick
#
# 黙想発動中演出

playsound minecraft:ambient.underwater.loop.additions player @s ~ ~ ~ 1 1
particle minecraft:nautilus ~ ~2 ~ 1.5 1 1.5 1 2 force @a[tag=ShowParticles]
execute if score _ _ matches 0 run playsound minecraft:ambient.underwater.exit player @s ~ ~ ~ 1 1.6
execute if score _ _ matches 0 run playsound minecraft:block.glass.break player @s ~ ~ ~ 1 0
