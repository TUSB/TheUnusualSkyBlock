##############################
### 下からDigit桁目のビット値
##############################

### 2のDigit乗
function calc_manager:bit/bitflag_of_x_digit

### 0か1かを返す
scoreboard players operation $Bit Global = $BitFlags Global
scoreboard players operation $Bit Global /= $BitFlag Global
scoreboard players operation $Bit Global %= $2 Const
