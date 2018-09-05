



execute facing entity @p eyes positioned ^ ^ ^-1 run function calc_manager:get/angle2
execute as @p at @s positioned ^ ^ ^1 run function calc_manager:get/angle1
function calc_manager:flip/base2flip1to3
function calc_manager:flip/base0flip3
function calc_manager:set/rotation3

playsound minecraft:block.glass.break master @s ^ ^ ^10 3 2
summon minecraft:armor_stand ^ ^ ^1 {Small:true,NoGravity:true,Invisible:true,Marker:true,PortalCooldown:49,Tags:[BoomIce],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}]}

tp @s ^ ^ ^1

execute if entity @a[distance=..3,limit=1] run kill @s
