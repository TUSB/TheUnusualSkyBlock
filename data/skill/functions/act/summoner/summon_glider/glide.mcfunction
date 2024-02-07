##############################
### サモンＥ：グライダー滑空
##############################

execute if entity @s[tag=!Glided,nbt=!{FallDistance:0f}] positioned ~ ~0.66 ~ if entity @a[nbt={RootVehicle:{Entity:{Tags:["Glider"]}}},distance=..1,limit=1,sort=nearest] positioned ~ ~-0.66 ~ run function skill:act/summoner/summon_glider/startup0
execute if entity @s[tag=Glided] unless entity @e[tag=GliderRunway,distance=..4] run function skill:act/summoner/summon_glider/startup1
#演出
function makeup:skill/act/summoner/summon_glider/glide
