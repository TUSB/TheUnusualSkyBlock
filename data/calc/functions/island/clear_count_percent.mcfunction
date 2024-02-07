#クリア数抽出
function calc:island/clear_count
##係数定数
# _ _ 占有
scoreboard players set _ _ 100
##算出
scoreboard players operation _ Ret *= _ _
# _ _ 解放
scoreboard players operation _ Ret >< _ _
# _ _ 占有
function calc:island/get_total
scoreboard players operation _ Ret >< _ _
scoreboard players operation _ Ret /= _ _