##############################
### サモンＰ：スノー
##############################

summon minecraft:snow_golem ~ ~ ~ {Team:Friendly,Health:0.1f,AbsorptionAmount:40f,ActiveEffects:[{Id:11b,Duration:2147483647,Amplifier:0b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Base:0.1d},{Name:"generic.movementSpeed",Base:0.4d}]}

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
