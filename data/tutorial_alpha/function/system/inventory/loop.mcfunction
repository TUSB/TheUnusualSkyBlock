
execute store result score _ _ run data get storage tutorial_alpha: pop.Items[-1].Slot
execute store result storage tutorial_alpha: pop.Items[-1].Slot byte 1 run scoreboard players remove _ _ 9
data modify block 2 2 2 Items append from storage tutorial_alpha: pop.Items[-1]
data remove storage tutorial_alpha: pop.Items[-1]

execute if data storage tutorial_alpha: pop.Items[-1] run function tutorial_alpha:system/inventory/loop
