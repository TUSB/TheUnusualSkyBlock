##############################
### 黒材強化の印版
##############################

fill ~-15 ~-2 ~-15 ~15 ~15 ~15 minecraft:andesite replace minecraft:gray_wool
fill ~-15 ~-2 ~-15 ~15 ~15 ~15 minecraft:gray_wool replace minecraft:gravel

particle minecraft:smoke ~ ~-0.5 ~ 0 0 0 0.05 100 force
particle minecraft:smoke ~ ~5 ~ 0.3 9 0.3 0 300 force
particle minecraft:smoke ~ ~5 ~ 10 7 10 0.1 2000 force
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 2

setblock ~ ~ ~ minecraft:air
