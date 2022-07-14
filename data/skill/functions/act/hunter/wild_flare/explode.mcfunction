
### ワイルドフレア拡散準備

###方角取得用マーカー召喚
function calc:geometry/tp_00001
###方角取得用マーカー処理
execute store result score _ Calc run data get entity @s Pos[0] 100
execute store result score _ _ run data get entity @s Motion[0] 100
execute store result entity 0-0-0-0-1 Pos[0] double 0.01 run scoreboard players operation _ Calc -= _ _
execute store result score _ Calc run data get entity @s Pos[1] 100
execute store result score _ _ run data get entity @s Motion[1] 100
execute store result entity 0-0-0-0-1 Pos[1] double 0.01 run scoreboard players operation _ Calc -= _ _
execute store result score _ Calc run data get entity @s Pos[2] 100
execute store result score _ _ run data get entity @s Motion[2] 100
execute store result entity 0-0-0-0-1 Pos[2] double 0.01 run scoreboard players operation _ Calc -= _ _

execute at 0-0-0-0-1 run tp 0-0-0-0-1 ~ ~ ~ facing entity @s

###ワイルドフレア生成
function skill:damage/load
execute as 0-0-0-0-1 at @s positioned ^ ^ ^2 run function skill:act/hunter/wild_flare/make_flare

function makeup:skill/act/hunter/wild_flare/explode
