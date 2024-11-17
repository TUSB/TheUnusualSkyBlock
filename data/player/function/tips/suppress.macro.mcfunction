#> player:tips/suppress.macro
$data modify storage tusb_player: TIPS.InValid append from storage tusb_player: TIPS.Valid[$(Suppress)]
$data remove storage tusb_player: TIPS.Valid[$(Suppress)]
