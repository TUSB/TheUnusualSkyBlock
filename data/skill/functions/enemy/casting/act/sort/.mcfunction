data modify storage mob_data: SortingCastingData append from storage mob_data: Casting[{Executed:1b}]
data remove storage mob_data: Casting[{Executed:1b}]

function skill:enemy/casting/act/sort/loop

data remove storage mob_data: Casting[{Executed:1b}].Executed