##############################
### 特殊床 分岐
##############################

### 即死床
execute if block ~ ~-2 ~ minecraft:smooth_red_sandstone if score @s Age matches 1.. run function entity_manager:unique_floor/death_floor/tick

### ダメージ床
execute if block ~ ~-2 ~ minecraft:nether_wart_block if entity @s[nbt={OnGround:true}] run function entity_manager:unique_floor/damage_floor

### 移動床
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta run function entity_manager:unique_floor/moving_walkway
