##############################
### inGroundトリガー
##############################

tag @s remove FlyingRequired
tag @s remove Projectile
tag @s remove TickingRequired
tag @s remove TickingTask

###セイクリッドピラー処理
execute if entity @s[tag=SacredPillar] run function skill_manager:white_mage/sacred_pillar/at0
