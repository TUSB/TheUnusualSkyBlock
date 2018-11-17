##############################
### BitFlagsのDigit桁目のフラグを立てる
##############################

function calc_manager:bit/bit_at_x_digit
function calc_manager:bit/bitflag_of_x_digit
execute if score $Bit Global matches 0 run scoreboard players operation $BitFlags Global += $BitFlag Global
