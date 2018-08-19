##############################
### サモンＥ：グライダー滑空
##############################

execute store result entity @s Rotation[0] float 0.01 run data get entity @a[distance=..1,sort=nearest,limit=1] Rotation[0] 100
execute store result entity @s Rotation[1] float 0.01 run data get entity @a[distance=..1,sort=nearest,limit=1] Rotation[1] 100
execute if entity @s[tag=!Glided,nbt=!{FallDistance:0f}] run function skill_manager:summoner/summon_glider/startup
execute if entity @s[tag=Glided,tag=!Glided2,nbt={OnGround:true}] run tag @s add Glided2
execute if entity @s[tag=Glided2,nbt={OnGround:false}] run function skill_manager:summoner/summon_glider/startup2
kill @s[tag=Glided3,nbt={OnGround:true}]

###---演出---Start
execute if entity @s[nbt={OnGround:false}] run particle minecraft:cloud ~ ~ ~ 0.6 0 0.6 0.05 5
###---演出---End
