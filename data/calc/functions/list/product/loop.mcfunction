#リストの総積を計算
execute store result score _ _ run data get storage calc: List[-1].Amount 100
scoreboard players operation _ Ret *= _ _
scoreboard players set _ _ 100
scoreboard players operation _ Ret /= _ _
data remove storage calc: List[-1]
execute if data storage calc: List[-1] run function calc:list/product/loop
