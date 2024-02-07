##############################
### inGroundトリガー
##############################

tag @s remove FlyingRequired
tag @s remove TickingRequired
scoreboard players remove @s[tag=NativeTask,tag=!BlastSpark] NativeFlag 1
tag @s remove NativeTask

###水流設置処理
#execute if entity @s[tag=FlowingWater] run function entity:block_placer/flowing_water
###溶岩流設置処理
#execute if entity @s[tag=FlowingLava] run function entity:block_placer/flowing_lava
###蜘蛛の巣設置処理
#execute if entity @s[tag=Cobweb] run function entity:block_placer/cobweb
###炎設置処理
#execute if entity @s[tag=Fire] run function entity:block_placer/fire
###松明設置処理
#execute if entity @s[tag=Torch] run function entity:block_placer/torch
###羊毛設置処理
#execute if entity @s[tag=Wool] run function entity:block_placer/wool
###氷設置処理
#execute if entity @s[tag=Ice] run function entity:block_placer/ice

###ワイルドフレア処理
execute if entity @s[tag=WildFlareSeed] run kill @s
###ぽむぽむ花火処理
execute if entity @s[tag=PomPom] run function skill:act/summoner/pompom/block

tag @s[tag=KillInGround] add Garbage
execute if entity @s[tag=HasSkillSnowball] run kill @e[tag=SkillSnowball,distance=..0.5]

kill @s[type=minecraft:trident,tag=!BlastSpark]
