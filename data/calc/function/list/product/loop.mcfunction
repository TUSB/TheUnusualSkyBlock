#> calc:list/product/loop
#リストの総積を計算
execute store result score __ _ run data get storage calc: List[-1] 100
scoreboard players operation _ Ret *= __ _
scoreboard players set __ _ 100
scoreboard players operation _ Ret /= __ _
data remove storage calc: List[-1]
execute if data storage calc: List[-1] run function calc:list/product/loop
