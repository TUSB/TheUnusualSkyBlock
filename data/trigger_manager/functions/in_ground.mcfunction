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

###セイクリッドピラー処理
execute if entity @s[tag=SacredPillar] run function skill_manager:white_mage/sacred_pillar/at0
