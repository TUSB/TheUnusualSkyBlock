#> skill:act/summoner/summon_glider/act1
#
# サモンＥ：グライダー
#

summon minecraft:skeleton_horse ~ ~ ~ {Tame:true,Silent:true,SaddleItem:{id:"minecraft:saddle",components:{"minecraft:custom_data":{NeverRemain:true,NoHold:true}},count:1},Tags:[Glider,Skill,NativeTask],CustomName:"{\"translate\":\"グライダー\"}",CustomNameVisible:true,DeathLootTable:"",attributes:[{id:"minecraft:max_health",base:5d},{id:"minecraft:movement_speed",base:0.0d},{id:"minecraft:jump_strength",base:1d}]}
execute if score _ Level matches 2 run data modify entity @e[distance=0,tag=!Initialized,limit=1] attributes[{id:"minecraft:jump_strength"}].base set value 2d
# 演出
function makeup:skill/act/summoner/summon_glider/act1
