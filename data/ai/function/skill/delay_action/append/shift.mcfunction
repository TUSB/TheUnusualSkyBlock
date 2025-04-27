#> ai:skill/delay_action/append/shift
###リストずらし
data modify storage mob_data: DelayAction append from storage mob_data: DelayAction[0]
data remove storage mob_data: DelayAction[0]
