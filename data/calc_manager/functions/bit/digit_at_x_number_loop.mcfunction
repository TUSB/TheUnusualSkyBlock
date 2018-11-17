##############################
### bigflag at x number のサブルーチン
##############################

### 桁を増やす
scoreboard players add $Digit Global 1
execute if score $Digit Global matches 33 run scoreboard players set $Digit Global 1
### ビット取得
function calc_manager:bit/bit_at_x_digit
### １なら残り値を１減らす
execute if score $Bit Global matches 1 run scoreboard players remove $Left Global 1

### 残りがまだあるならループ続行
execute if score $Left Global matches 1.. run function calc_manager:bit/digit_at_x_number_loop
