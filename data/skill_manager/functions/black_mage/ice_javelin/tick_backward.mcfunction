##############################
### アイスジャベリン後半処理
##############################

execute as @a[distance=..35,tag=Caster,limit=1] facing entity @s feet positioned ^ ^ ^-1 run function calc_manager:get/angle2
execute as @a[distance=..35,tag=Caster,limit=1] at @s positioned ^ ^ ^1 run function calc_manager:get/angle1
function calc_manager:flip/base2flip1to3
function calc_manager:flip/base0flip3
function calc_manager:set/rotation3
