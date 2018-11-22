##############################
### バースト発動準備演出
##############################

###---演出---Start
playsound minecraft:entity.illusioner.mirror_move master @s ~ ~ ~ 1 0.5
###---演出---End

tag @s add BurstReady

scoreboard players set @s BurstInputTimer 40

execute store result score $PreviousNumber Global run data get entity @s SelectedItemSlot
scoreboard players reset @s BurstCommand
function calc_manager:update_random
scoreboard players operation $Random Global %= $3 Const
scoreboard players add $Random Global 3
scoreboard players operation $LoopCount Global = $Random Global

function skill_manager:burst/get_command
