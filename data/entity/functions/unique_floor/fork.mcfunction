
### 特殊床 分岐


### 即死床
execute if block ~ ~-2 ~ minecraft:smooth_red_sandstone if score @s Age matches 1.. run function entity:unique_floor/death_floor/tick

### ダメージ床
execute if block ~ ~-2 ~ minecraft:nether_wart_block if entity @s[nbt={OnGround:true}] run function entity:unique_floor/damage_floor

### 移動床
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta run function entity:unique_floor/moving_walkway

### 赤石床
execute if block ~ ~-2 ~ minecraft:smooth_quartz run function entity:unique_floor/redstone_floor

### コマンド床
execute if block ~ ~-2 ~ minecraft:command_block run function entity:unique_floor/command_floor
