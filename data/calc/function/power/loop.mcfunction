#> calc:power/loop
# 乗算
scoreboard players operation _ Ret *= __ _

# 回数デクリメント
execute store result storage calc: Power.value int 1 run data get storage calc: Power.value 0.9999999999

# 再帰
execute unless data storage calc: Power{value:0} run function calc:power/loop

# 計算結果を返す
return run scoreboard players get _ Ret
