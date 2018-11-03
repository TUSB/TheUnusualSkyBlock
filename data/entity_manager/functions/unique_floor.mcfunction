##############################
### 特殊床 分岐
##############################

### 即死床
execute if block ~ ~-2 ~ minecraft:smooth_red_sandstone if entity @s[scores={HP=1..}] run function entity_manager:death_floor

### ダメージ床
execute if block ~ ~-2 ~ minecraft:nether_wart_block if entity @s[nbt={OnGround:true}] run function entity_manager:damage_floor
