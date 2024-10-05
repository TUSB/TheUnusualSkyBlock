##############################
### サモンＥ：グライダー
##############################

summon minecraft:skeleton_horse ~ ~ ~ {Tame:true,Silent:true,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{NeverRemain:true,NoHold:true}},Attributes:[{Name:"generic.max_health",Base:5d},{Name:"generic.movement_speed",Base:0.0d},{Name:"horse.jump_strength",Base:1d}],Tags:[Glider,Skill,NativeTask],CustomName:'{"translate":"グライダー"}',CustomNameVisible:true,DeathLootTable:"minecraft:empty"}
execute if score _ Level matches 2 run data modify entity @e[distance=0,tag=!Initialized,limit=1] Attributes[{Name:"minecraft:horse.jump_strength"}].Base set value 2d
#演出
function makeup:skill/act/summoner/summon_glider/act1
