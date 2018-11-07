##############################
### キャンドル処理
##############################

setblock ~ ~ ~ minecraft:lava[level=7] keep
fill ~ ~ ~ ~ ~ ~ minecraft:lava[level=7] replace minecraft:lava
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:air replace minecraft:lava
effect clear @a[distance=..7] minecraft:slowness

###---演出---Start
particle minecraft:smoke ~ ~0.75 ~ 0.1 0.25 0.1 0.001 1 force
###---演出---End
