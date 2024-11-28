#> block:unique_floor/moving_walkway
### 移動床処理

execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.4
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~-0.4 ~ ~
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~0.4 ~ ~
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.4

function makeup:entity/unique_floor/moving_walkway
