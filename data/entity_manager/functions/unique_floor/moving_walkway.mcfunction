##############################
### 移動床処理
##############################

execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.4
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~-0.4 ~ ~
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~0.4 ~ ~
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.4

###---演出---Start
particle minecraft:falling_dust minecraft:obsidian ~ ~ ~ 0.2 0 0.2 0 1 force @a[tag=ShowParticles]
playsound minecraft:entity.iron_golem.step master @s ~ ~64 ~ 8 0.5
###---演出---End
