#> makeup:skill/act/hunter/bird_strike/tick
#
# バードストライクtick演出

particle minecraft:sweep_attack ~ ~15 ~ 2 4 2 0 100 force @a[tag=ShowParticles]
execute if score $Ticks Count matches 0 run playsound minecraft:item.elytra.flying player @a[distance=..48] ~ ~ ~ 0.3 2
