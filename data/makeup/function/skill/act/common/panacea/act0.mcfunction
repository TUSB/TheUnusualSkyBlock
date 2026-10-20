#> makeup:skill/act/common/panacea/act0

execute if score _ Level matches 1 run particle dust{color:[1.000f,1.000f,0.624f],scale:1.0f} ~-0.1 ~ ~-0.1 0.3 1 0.3 0.1 30 force

playsound minecraft:entity.zombie_villager.converted player @a[distance=..16] ~ ~ ~ 1 1
