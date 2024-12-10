#> item:init_void_bundle/loop
data modify storage item: Items[0].components."minecraft:custom_data".VoidItems append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VoidItems[-1]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VoidItems[-1]

execute store result storage item: Count int 0.99999 run data get storage item: Count
execute unless data storage item: {Count:0} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VoidItems[-1] run function item:init_void_bundle/loop
