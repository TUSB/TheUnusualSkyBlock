##############################
### ブレイジングバレット始
##############################

tag @s add DontMove
data merge entity @s {Tags:["CallOnFin","Event","BlazingBulletStart","CooldownRequired"],PortalCooldown:20s}
#後ろに移動
scoreboard players set $M Global 100

execute at @s positioned ^ ^ ^-1 run function calc_manager:get/direction1xz

function calc_manager:multiply/pos1

function calc_manager:get/motion2

function calc_manager:add/1-2

function calc_manager:set/motion1
