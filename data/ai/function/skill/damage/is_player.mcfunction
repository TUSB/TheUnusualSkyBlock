#> ai:skill/damage/is_player
# プレイヤーは生存している必要がある。
execute if entity @s[nbt=!{Health:0.0f}] run function ai:skill/damage/can_be_blocked
