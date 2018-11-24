##############################
### サモンＰ：ウルフ
##############################

summon minecraft:wolf ~ ~ ~ {Motion:[0d,0.5d,0d],Team:Friendly,AbsorptionAmount:200f,ActiveEffects:[{Id:5b,Duration:2147483647,Amplifier:0b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:20d}]},{Name:"generic.attackDamage",Modifiers:[{Amount:400d}]},{Name:"generic.movementSpeed",Base:0.4d}],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:bone",Count:3b}}],CustomName:"[\"フレンドリー\"]",CustomNameVisible:true}
execute if score @s SupportSkill matches 62042 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.wolf.howl master @a[distance=..16] ~ ~ ~ 0.2 1
particle minecraft:entity_effect ~ ~0.5 ~ 0.6 0.6 0.6 1 30 force
particle minecraft:happy_villager ~ ~0.5 ~ 0.6 0.6 0.6 1 20 force
###---演出---End
