##############################
### BitFlagsの下からNumber番目に出てくるBitの桁数を返す
##############################

### 引き数初期化
scoreboard players operation $Left Global = $Number Global
scoreboard players set $Digit Global 0

### BitFlagsが0でない時だけ求める
execute unless score $BitFlags Global matches 0 run function calc_manager:bit/digit_at_x_number_loop
