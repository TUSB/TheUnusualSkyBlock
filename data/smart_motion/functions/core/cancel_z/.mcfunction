#ブロック判定キャンセル Z
execute unless entity @s[scores={sm.RotationX=-9000..9000}] run function smart_motion:core/cancel_z/north/
execute if entity @s[scores={sm.RotationX=-9000..9000}] run function smart_motion:core/cancel_z/south/
