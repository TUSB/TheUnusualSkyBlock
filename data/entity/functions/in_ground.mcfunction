##############################
### inGroundトリガー
##############################

tag @s remove FlyingRequired
tag @s remove Projectile
tag @s remove TickingRequired
tag @s remove NativeTask

###水流設置処理
execute if entity @s[tag=FlowingWater] run function entity:block_placer/flowing_water
###溶岩流設置処理
execute if entity @s[tag=FlowingLava] run function entity:block_placer/flowing_lava
###蜘蛛の巣設置処理
execute if entity @s[tag=Cobweb] run function entity:block_placer/cobweb
###炎設置処理
execute if entity @s[tag=Fire] run function entity:block_placer/fire
###松明設置処理
execute if entity @s[tag=Torch] run function entity:block_placer/torch
###羊毛設置処理
execute if entity @s[tag=Wool] run function entity:block_placer/wool
###氷設置処理
execute if entity @s[tag=Ice] run function entity:block_placer/ice

###ワイルドフレア処理
execute if entity @s[tag=WildFlareSeed] run kill @s
###セイクリッドピラー処理
execute if entity @s[tag=SacredPillar] run function skill_manager:white_mage/sacred_pillar/at0
###ぽむぽむ花火処理
execute if entity @s[tag=PomPom] run function skill:act/summoner/pompom/block

tag @s[tag=KillInGround] add Garbage
execute if entity @s[tag=HasSkillSnowball] run kill @e[tag=SkillSnowball,distance=..0.5]

tag @s[tag=BlastSpark] add NativeTask
kill @s[type=minecraft:trident,tag=!BlastSpark]
