##############################
### inGroundトリガー
##############################

tag @s remove FlyingRequired
tag @s remove Projectile
tag @s remove TickingRequired
tag @s remove TickingTask

###水流設置処理
execute if entity @s[tag=FlowingWater] run function enemy_manager:block_placer/flowing_water
###溶岩流設置処理
execute if entity @s[tag=FlowingLava] run function enemy_manager:block_placer/flowing_lava
###蜘蛛の巣設置処理
execute if entity @s[tag=Cobweb] run function enemy_manager:block_placer/cobweb
###炎設置処理
execute if entity @s[tag=Fire] run function enemy_manager:block_placer/fire
###松明設置処理
execute if entity @s[tag=Torch] run function enemy_manager:block_placer/torch
###羊毛設置処理
execute if entity @s[tag=Wool] run function enemy_manager:block_placer/wool
###氷設置処理
execute if entity @s[tag=Ice] run function enemy_manager:block_placer/ice

###セイクリッドピラー処理
execute if entity @s[tag=SacredPillar] run function skill_manager:white_mage/sacred_pillar/at0
