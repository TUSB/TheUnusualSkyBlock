
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DelayedDataList[]

execute store result storage tusb_mob: Count int 1 run data get storage tusb_mob: Count 0.999999999
execute unless data storage tusb_mob: {Count:0} run function enemy:spawn/count
