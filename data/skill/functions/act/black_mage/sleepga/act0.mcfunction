##############################
### スリプガ
##############################

#前方を探索
data modify storage calc: SearchForward set value {Loop:8,Stop:[Mob,Block],Align:0b}
execute anchored eyes positioned ^ ^ ^ anchored feet run function calc:geometry/search_forward/

execute at 0-0-0-0-0 as @e[tag=Mob,distance=..8] at @s run function skill:act/black_mage/sleepga/act1

#演出
execute at 0-0-0-0-0 run function makeup:skill/act/black_mage/sleepga/act0
