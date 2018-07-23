##############################
### サモンＰ：サーヴァント
##############################

summon minecraft:vindicator ~ ~ ~ {Team:Friendly,Health:80f,ActiveEffects:[{Id:11b,Duration:2147483647,Amplifier:0b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Base:80d},{Name:"generic.knockbackResistance",Modifiers:[{Amount:15d,UUIDLeast:0l},{Amount:20d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]},{Name:"generic.attackDamage",Base:1500d},{Name:"generic.movementSpeed",Base:0.4d}],Johnny:true,Tags:[HasSkill,Servant]}
execute if score @s SupportSkill matches 62082 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
