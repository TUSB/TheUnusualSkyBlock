#> calc:list/sum/x1
### リストの総和を計算
#初期化
scoreboard players set _ Ret 0
#再帰
execute if data storage calc: List[-1] run function calc:list/sum/loop
#結果を1倍で返す
scoreboard players set __ _ 100
scoreboard players operation _ Ret /= __ _
scoreboard players reset __ _
return run scoreboard players get _ Ret
