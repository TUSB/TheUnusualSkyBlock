
## calc: Power に情報を入れてこのファンクションを実行する

#> calc: Power
#{
#  Base : 底を指定
#  value : 指数を指定
#  result : 結果の出力
#}

# スコアに移動
execute store result score _ Calc run data modify storage calc: Power.result set value 1
execute store result score _ _ run data get storage calc: Power.Base

# 1乗以上で計算開始
execute store result score _ Ret run data get storage calc: Power.value
execute if score _ Ret matches 1.. store result storage calc: Power.result int 1 run function calc:power/loop
