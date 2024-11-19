#> calc:list/product/x1
### リストの総積を計算
#初期化
execute store result score _ Ret run data get storage calc: List[-1] 100
data remove storage calc: List[-1]
#再帰
execute if data storage calc: List[-1] run function calc:list/product/loop
#結果を1倍で返す
scoreboard players set __ _ 100
scoreboard players operation _ Ret /= __ _
scoreboard players reset __ _
return run scoreboard players get _ Ret
