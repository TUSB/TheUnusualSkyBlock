##############################
### サモンＥ：グライダー滑空
##############################

tag @s add Glided3
data merge entity @s {FallFlying:true,FallDistance:-10000f,Attributes:[{Name:"generic.movementSpeed",Base:0d}]}

###---演出---Start
particle minecraft:firework ^ ^ ^2 1.7 0 1.7 0 10
playsound minecraft:item.elytra.flying master @a[distance=..16] ~ ~ ~ 0.2 1
###---演出---End
