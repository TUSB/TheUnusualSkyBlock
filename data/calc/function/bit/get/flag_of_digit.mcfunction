#> calc:bit/get/flag_of_digit
## Digit桁目だけにBitが立っているFlagを返す

# Digit桁目ということはDigit-1乗
execute store result storage calc: Power.value int 1 run data get storage calc: Bit.Digit 0.9999999999

# 底を2に設定
data modify storage calc: Power.Base set value 2

# 累乗して値を詰める
execute store result storage calc: Bit.Flag int 1 run function calc:power/

