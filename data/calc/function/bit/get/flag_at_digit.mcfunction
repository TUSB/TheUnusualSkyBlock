#> calc:bit/get/flag_at_digit
## Digit桁目のBitのBitFlagを返す

function calc:bit/get/bit_at_digit

# フラグが立っていなければ0を返す
execute if data storage calc: Bit{_:0} run data modify storage calc: Bit.Flag set value 0
