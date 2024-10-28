#> calc:power/
## calc: Power に情報を入れてこのファンクションを実行する

#> calc: Power
#{
#  Base : 底を指定
#  value : 指数を指定
#  result : 結果の出力
#}

# スコアに移動
execute store result score __ _ run data get storage calc: Power.Base
scoreboard players set _ Ret 1

# 1乗以上で計算開始
execute store result score __ Calc run data get storage calc: Power.value
execute if score __ Calc matches 1.. store result storage calc: Power.result int 1 run function calc:power/loop

scoreboard players reset __ _
scoreboard players reset __ Calc

# 結果を返す
return run scoreboard players get _ Ret
