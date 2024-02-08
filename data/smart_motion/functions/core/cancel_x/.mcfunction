#ブロック判定キャンセル X
execute unless entity @s[scores={sm.RotationX=0..18000}] run function smart_motion:core/cancel_x/east/
execute if entity @s[scores={sm.RotationX=0..18000}] run function smart_motion:core/cancel_x/west/
