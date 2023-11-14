#> skill:act/common/dig_tomb/act2
#
# 持っているアイテムを吐き出す
#
# @within function skill:act/common/dig_tomb/act0

data modify storage item: Items set value []
data modify storage item: Items append from storage item: NowInventory[0]
data modify storage item: Items[0].Slot set value 0b
function item:system/shulker_box/save
execute in area:control_area run loot spawn 0 0 0 mine 2 2 2 debug_stick
execute anchored eyes run function calc:geometry/tp_00000
execute in area:control_area positioned 0 0 0 as @e[type=item,distance=..0.01] run tp @s 0-0-0-0-0
execute as 0-0-0-0-0 run function calc:geometry/return_marker
data remove storage item: NowInventory[0]
execute if data storage item: NowInventory[0] run function skill:act/common/dig_tomb/act2