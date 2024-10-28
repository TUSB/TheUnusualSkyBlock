#> calc:list/sum/x100
### リストの総和を計算
#初期化
scoreboard players set _ Ret 0
#再帰
execute if data storage calc: List[-1] run function calc:list/sum/loop
scoreboard players reset __ _
#結果を100倍で返す
return run scoreboard players get _ Ret
