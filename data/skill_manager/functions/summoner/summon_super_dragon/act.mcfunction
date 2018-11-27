##############################
### サモンＥ：スーパードラゴン
##############################

summon minecraft:horse ~ ~ ~ {Motion:[0d,0.8d,0d],Health:0.1f,ActiveEffects:[{Id:8b,Duration:2147483647,Amplifier:34b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Base:0.1d},{Name:"generic.movementSpeed",Base:0.5d},{Name:"horse.jumpStrength",Base:2d}],Tame:true,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{NeverRemain:true}},CustomName:"[\"スーパードラゴン\"]",CustomNameVisible:true,DeathLootTable:"minecraft:empty"}
execute if score @s SupportSkill matches 62022 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.horse.angry master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:entity_effect ~ ~2 ~ 1 1 1 1 100 force @a[tag=ShowParticles]
particle minecraft:falling_dust minecraft:white_wool ~ ~3.5 ~ 1 0.1 1 0.5 60 force @a[tag=ShowParticles]
particle minecraft:falling_dust minecraft:yellow_wool ~ ~3 ~ 0.6 0.1 0.6 0.5 50 force @a[tag=ShowParticles]
###---演出---End
