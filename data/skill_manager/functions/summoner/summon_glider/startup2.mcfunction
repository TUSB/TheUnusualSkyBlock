##############################
### サモンＥ：グライダー滑空
##############################

tag @s add Glided3
data merge entity @s {FallFlying:true,FallDistance:-10000f,Attributes:[{Name:"generic.movementSpeed",Base:0d}]}

###---演出---Start
particle minecraft:cloud ~ ~ ~ 0.6 0 0.6 0.05 5
###---演出---End
