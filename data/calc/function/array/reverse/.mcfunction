#> calc:array/reverse/
## calc : Array.reverse に情報を入れてこのファンクションを実行する

#> calc: Array.reverse
#{
#  Input : 操作対象の配列を入力
#  Output : 結果の出力
#}

# Outputのリセット
data remove storage calc: Array.reverse.Output


# Input[0]が存在するなら操作開始
execute if data storage calc: Array.reverse.Input[] run function calc:array/reverse/loop
