#> calc:bit/get/digit_at_number/loop
## digit at number のサブルーチン

# 桁を減らす
execute store result storage calc: Bit.Digit int 1 run data get storage calc: Bit.Digit 0.999999999
execute if data storage calc: Bit{Digit:0} run data modify storage calc: Bit.Digit set value 32

# 最上位が１なら残り値を１減らす
execute store result score __ _ run data get storage calc: Bit.Flags
execute if score __ _ matches ..-1 store result storage calc: Bit._ int 1 run data get storage calc: Bit._ 0.999999999
function calc:bit/rotate/left

# 残りがまだあるならループ続行
execute unless data storage calc: Bit{_:0} run function calc:bit/get/digit_at_number/loop
