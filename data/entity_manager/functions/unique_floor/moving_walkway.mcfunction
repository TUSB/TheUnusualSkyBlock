##############################
### 移動床処理
##############################

execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.25
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~-0.25 ~ ~
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~0.25 ~ ~
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.25

###---演出---Start
playsound minecraft:block.stone.break master @s ~ ~ ~ 1 0.5
###---演出---End
