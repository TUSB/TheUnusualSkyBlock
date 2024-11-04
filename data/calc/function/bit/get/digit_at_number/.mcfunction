#> calc:bit/get/digit_at_number/
## BitFlagsの上からNumber番目に出てくるBitの桁数を返す

# 引数初期化
data modify storage calc: Bit._ set from storage calc: Bit.Number
data modify storage calc: Bit.Digit set value 0

# BitFlagsが0でない時だけ求める
execute unless data storage calc: Bit{Flags:0} run function calc:bit/get/digit_at_number/loop

execute store result score _ Ret run data get storage calc: Bit.Digit
