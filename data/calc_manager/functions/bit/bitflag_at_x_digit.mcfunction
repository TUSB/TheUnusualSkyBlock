##############################
### Digit桁目のBitのBitFlagを返す
##############################

function calc_manager:bit/bit_at_x_digit
execute if score $Bit Global matches 0 run scoreboard players set $BitFlag Global 0
