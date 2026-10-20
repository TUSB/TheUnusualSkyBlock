##############################
### サモンＥ：スーパードラゴン
##############################

summon armor_stand ~ ~1 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",components:{"minecraft:custom_model_data":{floats:[1.0f]},"minecraft:custom_data":{SpawnEntities:[[{Tags:[Global,Friendly,Blow,FriendSuperDragon,Main,SpawnParticles],Level:20}]]}},count:1}]}
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#演出
function makeup:skill/act/summoner/summon_super_dragon/act1
