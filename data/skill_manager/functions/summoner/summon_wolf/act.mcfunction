##############################
### サモンＰ：ウルフ
##############################

summon minecraft:wolf ~ ~ ~ {Team:Friendly,AbsorptionAmount:40f,ActiveEffects:[{Id:11b,Duration:2147483647,Amplifier:0b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:20d}]},{Name:"generic.attackDamage",Modifiers:[{Amount:1500d}]},{Name:"generic.movementSpeed",Base:0.4d}],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:bone",Count:3b}}],CustomName:"[\"フレンドリー\"]",CustomNameVisible:true}
execute if score @s SupportSkill matches 62042 as @e[distance=0,tag=!Initialized] at @s run function skill_manager:summoner/summon_snow_golem/health_boost

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
