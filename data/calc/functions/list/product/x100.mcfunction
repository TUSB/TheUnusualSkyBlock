### リストの総積を計算
#初期化
execute store result score _ Ret run data get storage calc: List[-1] 100
data remove storage calc: List[-1]
#再帰
execute if data storage calc: List[-1] run function calc:list/product/loop
#結果を100倍で返す
scoreboard players get _ Ret
