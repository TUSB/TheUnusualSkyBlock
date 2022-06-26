
### アイスジャベリン後半処理

execute as 0-0-0-0-2 facing entity @s[distance=..35] feet positioned ^ ^ ^-1 run function calc:get/angle/2
execute as 0-0-0-0-2 at @s[distance=..35] positioned ^ ^ ^1 run function calc:get/angle/1
function calc:flip/base2flip1to3
function calc:flip/base0flip3
data modify entity @s Rotation set from storage calc: Rotation.3
