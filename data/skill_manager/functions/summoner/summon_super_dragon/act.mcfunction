##############################
### サモンＥ：スーパードラゴン
##############################

summon minecraft:horse ~ ~ ~ {Health:0.1f,ActiveEffects:[{Id:8b,Duration:2147483647,Amplifier:4b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Base:0.1d},{Name:"generic.movementSpeed",Base:0.5d},{Name:"horse.jumpStrength",Base:2d}],Tame:true,SaddleItem:{id:"minecraft:saddle",Count:1b}}

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
