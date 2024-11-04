#> calc:bit/
## calc: Bit に情報を入れてこのファンクションを実行する

#> calc: Bit
#{
#  Flags : Int 対象のデータを入力
#  Digit : Int フラグを立てたり落としたり確認をするときの指定桁を入力
#  Number: Int 上から何番目に出てくるBitの桁を探すか入力
#  Operation : Int 以下で説明する数値を入力
#}

#> Operation
#
# 1: FlagsのDigit桁目のフラグを立てる
# 2: FlagsのDigit桁目のフラグを落とす
# 3: Flagsの上からNumber番目に出てくるBitの桁数を返す
# 4: FlagsのDigit桁目のフラグを返す
#

execute if data storage calc: Bit{Operation:1} run function calc:bit/raise
execute if data storage calc: Bit{Operation:2} run function calc:bit/drop
execute if data storage calc: Bit{Operation:3} run function calc:bit/get/digit_at_number/
execute if data storage calc: Bit{Operation:4} run function calc:bit/get/bit_at_digit/

scoreboard players reset __ _
scoreboard players reset __ Calc

# 結果を返す
return run scoreboard players get _ Ret
