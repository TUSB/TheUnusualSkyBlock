##############################
### 最上位の数字サブルーチン
##############################

scoreboard players operation $Number Global /= $2 Const
execute if score $Number Global matches 10.. run function calc_manager:decimal/number_at_max_digit_loop
