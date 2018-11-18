##############################
### BitFlagsのDigit桁目のフラグを落とす
##############################

function calc_manager:bit/bit_at_x_digit
function calc_manager:bit/bitflag_of_x_digit
execute if score $Bit Global matches 1.. run scoreboard players operation $BitFlags Global -= $BitFlag Global
