##############################
### つんつん適用
##############################

#フレンドリースノーゴーレム進化
# data merge entity @s[tag=BeforeEvolution,type=snow_golem] {Tags:[Spawn],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,FriendSentrySnowGolem,Main,SpawnParticles],Level:40}]]}}]}
execute if entity @s[tag=BeforeEvolution,type=snow_golem] run summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,FriendSentrySnowGolem,Main,SpawnParticles],Level:40}]]}}]}

#フレンド・ウルフ進化
# execute if entity @s[type=wolf] run data merge entity @s {Owner:[I;0,0,0,0]}
# scoreboard players reset @s[tag=BeforeEvolution,type=wolf] Level
# data merge entity @s[tag=BeforeEvolution,type=wolf] {Tags:[Spawn],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Blow,FriendThunderbolf,Main,SpawnParticles],Level:50}]]}}]}
execute if entity @s[tag=BeforeEvolution,type=wolf] run summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Blow,FriendThunderbolf,Main,SpawnParticles],Level:50}]]}}]}

tag @s add Sicced
tag @s add CooldownRequired
tag @s[tag=BeforeEvolution] add Garbage
execute store result entity @s PortalCooldown int 1 run scoreboard players get _ Calc
execute store result entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base double 0.015 run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base 100
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.015 run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 100
data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers append value {Amount:0.5d,Operation:1,UUID:[I;0,0,0,2]}

#演出
function makeup:skill/act/summoner/tsuntsun/apply
