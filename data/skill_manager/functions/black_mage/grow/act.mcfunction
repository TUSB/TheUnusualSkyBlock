##############################
### グロウ発動
##############################

execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:wheat[age=7] replace minecraft:wheat
execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:carrots[age=7] replace minecraft:carrots
execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:potatoes[age=7] replace minecraft:potatoes
execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:pumpkin_stem[age=7] replace minecraft:pumpkin_stem
execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:melon_stem[age=7] replace minecraft:melon_stem
execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:nether_wart[age=3] replace minecraft:nether_wart
execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:beetroots[age=3] replace minecraft:beetroots
execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:cocoa[age=2,facing=north] replace minecraft:cocoa[facing=north]
execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:cocoa[age=2,facing=east] replace minecraft:cocoa[facing=east]
execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:cocoa[age=2,facing=south] replace minecraft:cocoa[facing=south]
execute positioned ~-1.5 ~-1 ~-1.5 run fill ~ ~ ~ ~3 ~2 ~3 minecraft:cocoa[age=2,facing=west] replace minecraft:cocoa[facing=west]

###---演出---Start
playsound minecraft:block.grass.break master @a[distance=..16] ~ ~ ~ 1 0.5 0
playsound minecraft:entity.puffer_fish.blow_up master @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:happy_villager ~ ~0.3 ~ 2 0 2 0 90 force @a[tag=ShowParticles]
###---演出---End
