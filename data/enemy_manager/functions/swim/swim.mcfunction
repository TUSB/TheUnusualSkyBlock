##############################
### 流体移動速度アップ
##############################

execute at @s positioned ^ ^ ^1 run function calc_manager:get/direction1xz
execute store result score $M Global run data get entity @s Attributes[0].Modifiers[0].Amount 100
function calc_manager:multiply/pos1

function calc_manager:get/motion2

function calc_manager:add/1-2

function calc_manager:set/motion1
