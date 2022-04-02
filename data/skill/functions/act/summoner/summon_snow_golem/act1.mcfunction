##############################
### サモンＰ：スノー
##############################

#summon minecraft:snow_golem ~ ~ ~ {Team:Friendly,Health:200f,ActiveEffects:[{Id:3b,Duration:2147483647,Amplifier:0b,ShowParticles:false},{Id:25b,Duration:18,Amplifier:2b,ShowParticles:true},{Id:28b,Duration:30,Amplifier:0b,ShowParticles:true}],Attributes:[{Name:"generic.max_health",Base:200d},{Name:"generic.movement_speed",Base:0.4d},{Name:"generic.follow_range",Base:48d}],CustomName:'{"translate":"フレンドリー"}',CustomNameVisible:true,DeathLootTable:"minecraft:empty"}
summon armor_stand ~ ~1 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Shoot,FriendSnowGolem,Main,SpawnParticles],Level:1}]]}}]}
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#演出
function makeup:skill/act/summoner/summon_snow_golem/act1
