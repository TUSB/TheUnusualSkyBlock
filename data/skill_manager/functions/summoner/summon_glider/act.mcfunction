##############################
### サモンＥ：グライダー
##############################

execute if score @s SupportSkill matches 62091 run summon minecraft:skeleton_horse ~ ~ ~ {Tame:true,Silent:true,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{NeverRemain:true}},Attributes:[{Name:"generic.maxHealth",Base:5d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"horse.jumpStrength",Base:1d}],ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b,tag:{NeverRemain:true}},{}],ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b,tag:{NeverRemain:true}},Tags:[Glider,NativeTask],CustomName:"[\"グライダー\"]",CustomNameVisible:true,DeathLootTable:"minecraft:empty"}
execute if score @s SupportSkill matches 62092 run summon minecraft:skeleton_horse ~ ~ ~ {Tame:true,Silent:true,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{NeverRemain:true}},Attributes:[{Name:"generic.maxHealth",Base:5d},{Name:"generic.movementSpeed",Base:0.0d},{Name:"horse.jumpStrength",Base:2d}],ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b,tag:{NeverRemain:true}},{}],ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b,tag:{NeverRemain:true}},Tags:[Glider,NativeTask],CustomName:"[\"グライダー\"]",CustomNameVisible:true,DeathLootTable:"minecraft:empty"}

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.skeleton_horse.death master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:entity_effect ~ ~1 ~ 0.6 0.6 0.6 1 30 force @a[tag=ShowParticles]
particle minecraft:totem_of_undying ~ ~2 ~ 1 1 1 0 20 force @a[tag=ShowParticles]
###---演出---End
