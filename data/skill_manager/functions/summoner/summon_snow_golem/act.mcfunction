##############################
### サモンＰ：スノー
##############################

summon minecraft:snow_golem ~ ~ ~ {Team:Friendly,Health:200f,ActiveEffects:[{Id:3b,Duration:2147483647,Amplifier:0b,ShowParticles:false},{Id:25b,Duration:18,Amplifier:2b,ShowParticles:true},{Id:28b,Duration:30,Amplifier:0b,ShowParticles:true}],Attributes:[{Name:"generic.maxHealth",Base:40d},{Name:"generic.movementSpeed",Base:0.4d}],CustomName:"[\"フレンドリー\"]",CustomNameVisible:true,DeathLootTable:"minecraft:empty"}
execute if score @s SupportSkill matches 62012 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:entity_effect ~ ~0.3 ~ 0.6 1 0.6 1 50 force
particle minecraft:instant_effect ~ ~0.1 ~ 0 0 0 1 80 force
###---演出---End
