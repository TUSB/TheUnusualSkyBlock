

execute facing entity @e[tag=TESTCORE,limit=1] feet positioned ^ ^ ^-1 run function calc_manager:get/angle1
execute positioned ^ ^ ^1 run function calc_manager:get/angle2

function calc_manager:flip/base2flip1to3
function calc_manager:set/rotation3

playsound minecraft:block.glass.break master @s ^ ^ ^10 3 2
summon minecraft:armor_stand ^ ^ ^1 {Small:true,NoGravity:true,Invisible:true,Marker:true,PortalCooldown:49,Tags:[BoomIce],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}]}

tp @s ^ ^ ^1

execute unless entity @a[distance=..32,limit=1] run tag @s add Reverse
