#> block:unique_floor/fork
### 特殊床 分岐

# 風切中は特殊床無効
execute if score @s Kazakiri matches 1.. run return fail

### 即死床
execute if block ~ ~-2 ~ minecraft:smooth_red_sandstone if score @s Age matches 1.. run function block:unique_floor/death_floor/tick

### ダメージ床
execute if block ~ ~-2 ~ minecraft:nether_wart_block if entity @s[nbt={OnGround:true}] run function block:unique_floor/damage_floor

### 移動床
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta run function block:unique_floor/moving_walkway

### 落とし床
execute if block ~ ~-2 ~ minecraft:warped_wart_block if entity @s[nbt={OnGround:true}] run function block:unique_floor/drop_floor

### カスタム床
execute if block ~ ~-2 ~ minecraft:command_block{CustomName:'"Trap"'} run function block:unique_floor/custom_floor
