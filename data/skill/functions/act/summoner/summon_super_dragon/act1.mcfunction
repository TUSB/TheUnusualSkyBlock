##############################
### サモンＥ：スーパードラゴン
##############################

summon minecraft:horse ~ ~ ~ {Team:Friendly,Motion:[0d,0.8d,0d],Health:0.1f,ActiveEffects:[{Id:8b,Duration:2147483647,Amplifier:34b,ShowParticles:false},{Id:11b,Amplifier:4b,Duration:50}],Attributes:[{Name:"generic.max_health",Base:0.1d},{Name:"generic.movement_speed",Base:0.5d},{Name:"horse.jump_strength",Base:2d}],Tame:true,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{NeverRemain:1b}},CustomName:'{"translate":"スーパードラゴン"}',CustomNameVisible:true,DeathLootTable:"minecraft:empty"}
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#演出
function makeup:skill/act/summoner/summon_super_dragon/act1
