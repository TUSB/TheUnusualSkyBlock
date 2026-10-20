##############################
### つんつん適用
##############################

#フレンドリースノーゴーレム進化
# data merge entity @s[tag=BeforeEvolution,type=snow_golem] {Tags:[Spawn],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,FriendSentrySnowGolem,Main,SpawnParticles],Level:40}]]}}]}
execute if entity @s[tag=BeforeEvolution,type=snow_golem] run summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",components:{"minecraft:custom_model_data":{floats:[1.0f]},"minecraft:custom_data":{SpawnEntities:[[{Tags:[Global,Friendly,Shoot,FriendSentrySnowGolem,Main,SpawnParticles],Level:40}]]}},count:1}]}

#フレンド・ウルフ進化
# execute if entity @s[type=wolf] run data merge entity @s {Owner:[I;0,0,0,0]}
# scoreboard players reset @s[tag=BeforeEvolution,type=wolf] Level
# data merge entity @s[tag=BeforeEvolution,type=wolf] {Tags:[Spawn],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Blow,FriendThunderbolf,Main,SpawnParticles],Level:50}]]}}]}
execute if entity @s[tag=BeforeEvolution,type=wolf] run summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",components:{"minecraft:custom_model_data":{floats:[1.0f]},"minecraft:custom_data":{SpawnEntities:[[{Tags:[Global,Friendly,Blow,FriendThunderbolf,Main,SpawnParticles],Level:50}]]}},count:1}]}

tag @s add Sicced
tag @s add CooldownRequired
tag @s[tag=BeforeEvolution] add Garbage
execute store result entity @s PortalCooldown int 1 run scoreboard players get _ Calc
execute store result entity @s attributes[{id:"minecraft:follow_range"}].base double 0.015 run data get entity @s attributes[{id:"minecraft:follow_range"}].base 100
execute store result entity @s attributes[{id:"minecraft:movement_speed"}].base double 0.015 run data get entity @s attributes[{id:"minecraft:movement_speed"}].base 100
data modify entity @s attributes[{id:"minecraft:attack_damage"}].modifiers append value {id:"minecraft:00000000-0000-0000-0000-000000000002",amount:0.5d,operation:"add_multiplied_base"}

#演出
function makeup:skill/act/summoner/tsuntsun/apply
