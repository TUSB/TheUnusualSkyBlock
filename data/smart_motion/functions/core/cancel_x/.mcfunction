#ブロック判定キャンセル X
execute if entity @s[y_rotation=180..360] run function smart_motion:core/cancel_x/east/
execute if entity @s[y_rotation=0..180] run function smart_motion:core/cancel_x/west/
