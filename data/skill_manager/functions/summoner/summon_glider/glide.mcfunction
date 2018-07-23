##############################
### サモンＥ：グライダー滑空
##############################

execute store result entity @s Rotation[0] float 0.01 run data get entity @a[distance=..1,sort=nearest,limit=1] Rotation[0] 100
execute store result entity @s Rotation[1] float 0.01 run data get entity @a[distance=..1,sort=nearest,limit=1] Rotation[1] 100
tag @s[tag=!Glided,nbt=!{FallDistance:-10000f},nbt=!{FallDistance:0f}] add Glided
data merge entity @s[tag=!Glided] {FallFlying:true,FallDistance:-10000f}
kill @s[tag=Glided,nbt={OnGround:true}]

###---演出---Start
###---演出---End
