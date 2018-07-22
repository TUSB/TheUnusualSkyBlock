##############################
### サモンＰ：ウルフ
##############################

summon minecraft:wolf ~ ~ ~ {Team:Friendly,AbsorptionAmount:40f,ActiveEffects:[{Id:11b,Duration:2147483647,Amplifier:0b,ShowParticles:false}],Attributes:[{Name:"generic.attackDamage",Modifiers:[{Amount:56d}]},{Name:"generic.movementSpeed",Base:0.4d}],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:bone",Count:3b}}]}

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
