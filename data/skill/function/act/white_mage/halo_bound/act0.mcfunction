#> skill:act/white_mage/halo_bound/act0
#
# ヘイローバウンド発動

#前方を探索
data modify storage calc: SearchForward set value {Loop:16,Stop:[Mob,Block],Align:1b}
execute anchored eyes positioned ^ ^ ^ anchored feet run function calc:geometry/search_forward/

#召喚
execute at 0-0-0-0-0 positioned ^ ^ ^ run function skill:act/white_mage/halo_bound/act1
