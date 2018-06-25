##############################
### ブロック設置
##############################

execute if entity @s[tag=Cobweb] run function enemy_manager:block_placer/cobweb
execute if entity @s[tag=Fire] run function enemy_manager:block_placer/fire
execute if entity @s[tag=FlowingWater] run function enemy_manager:block_placer/flowing_water
execute if entity @s[tag=FlowingLava] run function enemy_manager:block_placer/flowing_lava
