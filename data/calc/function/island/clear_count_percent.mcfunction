#> calc:island/clear_count_percent
#クリア数抽出
function calc:island/clear_count
##係数定数
# __ _ 占有
scoreboard players set __ _ 100
##算出
scoreboard players operation _ Ret *= __ _
# __ _ 解放
scoreboard players operation _ Ret >< __ _
# __ _ 占有
execute store result score __ _ run function #calc:island/get_total
scoreboard players operation _ Ret /= __ _
scoreboard players reset __ _
return run scoreboard players get _ Ret
