##############################
### つんつん適用
##############################

#フレンドリースノーゴーレム進化
scoreboard players reset @s[tag=BeforeEvolution,type=snow_golem] Level
data merge entity @s[tag=BeforeEvolution,type=snow_golem] {Tags:[Spawn],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,FriendSentrySnowGolem,Main,SpawnParticles],Level:40}]]}}]}

tag @s add Sicced
tag @s add CooldownRequired
execute store result entity @s PortalCooldown int 1 run scoreboard players get _ Calc
execute store result entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base double 0.015 run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base 100
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.015 run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 100
data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers append value {Amount:0.5d,Operation:1,UUID:[I;0,0,0,2]}

#演出
function makeup:skill/act/summoner/tsuntsun/apply
