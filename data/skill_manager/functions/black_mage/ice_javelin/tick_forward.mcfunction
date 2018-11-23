##############################
### アイスジャベリン前半処理
##############################

execute as @a[distance=..35] if score @s ID = $Id Global facing entity @s feet positioned ^ ^ ^-1 run function calc_manager:get/angle1
execute as @a[distance=..35] if score @s ID = $Id Global at @s positioned ^ ^ ^1 run function calc_manager:get/angle2
function calc_manager:flip/base2flip1to3
function calc_manager:set/rotation3
