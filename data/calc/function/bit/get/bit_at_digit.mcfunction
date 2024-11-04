#> calc:bit/get/bit_at_digit
## FlagsのDigit桁目のフラグを返す

# 2の(Digit-1)乗
function calc:bit/get/flag_of_digit

# 0か1かを返す
#スコアに移動
execute store result score __ Calc run data get storage calc: Bit.Flags
execute store result score __ _ run data get storage calc: Bit.Flag

scoreboard players operation __ Calc /= __ _
scoreboard players set __ _ 2
execute store result storage calc: Bit._ int 1 run scoreboard players operation __ Calc %= __ _
