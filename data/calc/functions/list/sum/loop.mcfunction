#リストの総和を計算
execute store result score _ _ run data get storage calc: List[-1] 100
scoreboard players operation _ Ret += _ _
data remove storage calc: List[-1]
execute if data storage calc: List[-1] run function calc:list/sum/loop
