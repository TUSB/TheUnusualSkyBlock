##############################
### 下からDigit桁目のビット値
##############################

### 2のDigit乗
function calc_manager:bit/bitflag_of_x_digit

### 0か1かを返す
scoreboard players operation $Bit Global = $BitFlags Global
scoreboard players operation $Bit Global /= $BitFlag Global
scoreboard players operation $Bit Global %= $2 Const
execute if score $BitFlag Global matches -2147483648 store result score $Bit Global if score $BitFlags Global matches ..-1
