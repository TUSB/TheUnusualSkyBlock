##############################
### bigflag at x number のサブルーチン
##############################

### 桁を減らす
scoreboard players remove $Digit Global 1
execute if score $Digit Global matches ..0 run scoreboard players set $Digit Global 32
### 最上位が１なら残り値を１減らす
execute if score $BitFlags Global matches ..-1 run scoreboard players remove $Left Global 1
function calc_manager:bit/rotate_left

### 残りがまだあるならループ続行
execute if score $Left Global matches 1.. run function calc_manager:bit/digit_at_x_number_loop
