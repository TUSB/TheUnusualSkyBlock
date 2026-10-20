
# TIPSの総数を取得
execute store result score _ _ run data get storage tusb_player: TIPS
# まだ50Lv以下ならCPの説明を省く
execute if score @s Level matches ..49 run scoreboard players remove _ _ 1
# TipsSuppressFlagを反転させる 2^総数-1
execute store result storage calc: Power.value int 1 run scoreboard players get _ _
data modify storage calc: Power.Base set value 2
execute store result score _ TipsSuppressFlag run function calc:power/
scoreboard players remove _ TipsSuppressFlag 1
scoreboard players operation _ TipsSuppressFlag -= @s TipsSuppressFlag

# スコア退避
scoreboard players operation # TipsSuppressFlag = @s TipsSuppressFlag
scoreboard players operation @s TipsSuppressFlag = _ TipsSuppressFlag

function player:tips/show

# スコア復帰
scoreboard players operation @s TipsSuppressFlag = # TipsSuppressFlag
