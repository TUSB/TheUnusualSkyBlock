#> entity:spawn/correction_pos/check_a_point

# すでに召喚可能位置が見つかっていれば終了
execute if score _ _ matches 1 run return 1

# 周辺のブロックを確認する
execute if function entity:spawn/correction_pos/check_block run return run function entity:spawn/correction_pos/confirmed
# 水平方向探索中なら左右を欲張ってみる
execute if entity @s[x_rotation=0] positioned ^0.76 ^ ^ if function entity:spawn/correction_pos/check_block run return run function entity:spawn/correction_pos/confirmed
execute if entity @s[x_rotation=0] positioned ^-0.76 ^ ^ if function entity:spawn/correction_pos/check_block run return run function entity:spawn/correction_pos/confirmed

tp ~ ~ ~
