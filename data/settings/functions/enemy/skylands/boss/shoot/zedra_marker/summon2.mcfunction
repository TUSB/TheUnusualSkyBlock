#Function
playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 0.5 2
item replace entity @e[distance=..2,tag=ZedraHead,sort=nearest,limit=1] armor.head with stick{CustomModelData:2002}
execute as @e[distance=..1,tag=ZedraBody,sort=nearest,limit=1] run tag @s add NowTarget
execute as @e[distance=..1,tag=NowTarget] run function oh_my_dat:please
execute as @e[distance=..1,tag=NowTarget] run function settings:enemy/global/event/function/rotate_armor/main
execute as @e[distance=..1,tag=NowTarget] run tag @s add Rotating
execute as @e[distance=..1,tag=NowTarget] run tag @s remove NowTarget
function oh_my_dat:please
