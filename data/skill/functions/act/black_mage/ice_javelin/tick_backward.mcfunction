
### アイスジャベリン後半処理

execute as @a[distance=..35,tag=Caster,limit=1] facing entity @s feet positioned ^ ^ ^-1 run function calc:get/angle/2
execute as @a[distance=..35,tag=Caster,limit=1] at @s positioned ^ ^ ^1 run function calc:get/angle/1
function calc:flip/base2flip1to3
function calc:flip/base0flip3
data modify entity @s Rotation set from storage calc: Rotation.3
