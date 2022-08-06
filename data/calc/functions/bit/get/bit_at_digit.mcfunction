
## FlagsのDigit桁目のフラグを返す

# 2の(Digit-1)乗
function calc:bit/get/flag_of_digit

# 0か1かを返す
#スコアに移動
execute store result score _ Calc run data get storage calc: Bit.Flags
execute store result score _ _ run data get storage calc: Bit.Flag

scoreboard players operation _ Calc /= _ _
scoreboard players set _ _ 2
execute store result storage calc: Bit._ int 1 run scoreboard players operation _ Calc %= _ _
