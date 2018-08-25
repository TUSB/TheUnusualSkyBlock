##############################
### プレイヤー狙い
##############################
execute positioned as @s facing entity @p[scores={TimeSinceDeath=1..}] eyes run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Direction] run function entity_manager:direction

execute rotated as @s positioned ^ ^ ^1 run function calc_manager:get/direction1

###100mをPortalCooldown tickかけて進む
###set M to 10000/pc ,need pc >= 10
scoreboard players set $M Global 10000
execute store result score $D Global run data get entity @s PortalCooldown 1
scoreboard players operation $M Global /= $D Global
function calc_manager:multiply/pos1

function calc_manager:set/motion1
function calc_manager:set/dir_and_pow
