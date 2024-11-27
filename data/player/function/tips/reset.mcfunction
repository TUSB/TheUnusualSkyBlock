#> player:tips/reset
data remove storage tusb_player: TIPS
data modify storage tusb_player: TIPS.Valid set from storage tusb_player: TIPSList
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TIPSList set from storage tusb_player: TIPS
