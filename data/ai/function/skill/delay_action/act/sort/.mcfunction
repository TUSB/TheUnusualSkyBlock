#> ai:skill/delay_action/act/sort/
data modify storage mob_data: SortingActionData append from storage mob_data: DelayAction[{Executed:1b}]
data remove storage mob_data: DelayAction[{Executed:1b}]

function ai:skill/delay_action/act/sort/loop

data remove storage mob_data: DelayAction[{Executed:1b}].Executed
