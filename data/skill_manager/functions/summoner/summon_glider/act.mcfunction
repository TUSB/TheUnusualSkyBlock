##############################
### サモンＥ：グライダー
##############################

execute if score @s SupportSkill matches 62091 run summon minecraft:horse ~ ~ ~ {Tame:true,Silent:true,FallDistance:-10000f,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{NeverRemain:true}},ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:127b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Base:5d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"horse.jumpStrength",Base:1d}],ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b,tag:{NeverRemain:true}},{}],ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b,tag:{NeverRemain:true}},Tags:[Glider,TickingTask],CustomName:"[\"グライダー\"]",CustomNameVisible:true}
execute if score @s SupportSkill matches 62092 run summon minecraft:horse ~ ~ ~ {Tame:true,Silent:true,FallDistance:-10000f,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{NeverRemain:true}},ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:127b,ShowParticles:false}],Attributes:[{Name:"generic.maxHealth",Base:5d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"horse.jumpStrength",Base:2d}],ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b,tag:{NeverRemain:true}},{}],ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b,tag:{NeverRemain:true}},Tags:[Glider,TickingTask],CustomName:"[\"グライダー\"]",CustomNameVisible:true}

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
