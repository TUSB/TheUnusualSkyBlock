### リストの総和を計算
#初期化
scoreboard players set _ Ret 0
#再帰
execute if data storage calc: List[-1] run function calc:list/sum/loop
#結果を1倍で返す
scoreboard players set _ _ 100
return run scoreboard players operation _ Ret /= _ _
