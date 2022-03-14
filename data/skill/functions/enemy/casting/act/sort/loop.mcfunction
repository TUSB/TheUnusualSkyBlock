###SortingCastingDataの要素がなくなるまでループする
### "_ _" SortingCastingData[-1]のNextAction
execute store result score _ _ run data get storage mob_data: SortingCastingData[-1].NextAction
data modify storage mob_data: AddingCast set from storage mob_data: SortingCastingData[-1]
function skill:enemy/casting/append/search
data remove storage mob_data: SortingCastingData[-1]
execute if data storage mob_data: SortingCastingData[-1] run function skill:enemy/casting/act/sort/loop