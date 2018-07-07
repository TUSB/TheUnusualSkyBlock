##############################
### プレイヤー狙い
##############################

execute at @p[scores={TimeSinceDeath=1..}] positioned ~ ~1.52 ~ run function calc_manager:get/direction1

###100mをPortalCooldown tickかけて進む
###set M to 10000/pc ,need pc >= 10
scoreboard players set $M Global 10000
execute store result score $D Global run data get entity @s PortalCooldown 1
scoreboard players operation $M Global /= $D Global
function calc_manager:multiply/pos1

function calc_manager:set/motion1
