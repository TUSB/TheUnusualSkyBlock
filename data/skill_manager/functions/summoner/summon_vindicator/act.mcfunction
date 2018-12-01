##############################
### サモンＰ：サーヴァント
##############################

summon minecraft:vindicator ~ ~2.4 ~ {Motion:[0d,-1d,0d],Team:Friendly,Health:200f,ActiveEffects:[{Id:23b,Duration:2147483647,Amplifier:0b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Base:80d},{Name:"generic.knockbackResistance",Modifiers:[{Amount:15d,UUIDLeast:0l},{Amount:20d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]},{Name:"generic.attackDamage",Base:600d},{Name:"generic.movementSpeed",Base:0.4d},{Name:"generic.followRange",Base:48d}],Johnny:true,Tags:[HasSkill,Servant],CustomName:"[\"フレンドリー\"]",CustomNameVisible:true}
execute if score @s SupportSkill matches 62082 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.vindicator.ambient master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.vindicator.ambient master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.vindicator.ambient master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:entity_effect ~ ~0.3 ~ 0.6 1 0.6 1 50 force @a[tag=ShowParticles]
particle minecraft:angry_villager ~ ~0.3 ~ 0.6 1 0.6 1 15 force @a[tag=ShowParticles]
###---演出---End
