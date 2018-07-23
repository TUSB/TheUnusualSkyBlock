##############################
### サモンＰ：スノー
##############################

summon minecraft:snow_golem ~ ~ ~ {Team:Friendly,Health:40f,ActiveEffects:[{Id:11b,Duration:2147483647,Amplifier:0b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Base:40d},{Name:"generic.movementSpeed",Base:0.4d}],CustomName:"[\"フレンドリー\"]",CustomNameVisible:true}
execute if score @s SupportSkill matches 62012 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
