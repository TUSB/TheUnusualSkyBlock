##############################
### ロックンロール攻撃処理
##############################

tp @s ~ ~ ~ ~ ~15
execute as @e[tag=RockNRoll] if entity @s[x_rotation=85..90] at @s facing ^ ^ ^-1 run tp @s ~ ~ ~ ~180 ~

function calc_manager:get/pos2

execute at @s store result score $Y Global run data get entity @s Pos[1] 1000
execute at @s run tp @s ^ ^ ^2
function calc_manager:get/pos1
scoreboard players operation $YAnothier global = $Y1 Global
scoreboard players operation $Y1 Global = $Y Global
function calc_manager:set/pos1
execute at @s run particle minecraft:heart ~ ~ ~ 0 0 0 0 1 force

function calc_manager:set/pos2