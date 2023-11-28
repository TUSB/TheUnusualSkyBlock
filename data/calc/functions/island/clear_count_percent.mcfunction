#クリア数抽出
execute store result score _ Ret run function calc:island/clear_count
##係数定数
scoreboard players set _ _ 100
##算出
scoreboard players operation _ Ret *= _ _
execute store result score _ _ run function calc:island/get_total
scoreboard players operation _ Ret /= _ _