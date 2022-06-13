###SortingActionDataの要素がなくなるまでループする
### "_ _" SortingActionData[-1]のNextAction
execute store result score _ _ run data get storage mob_data: SortingActionData[-1].NextAction
data modify storage mob_data: AddingCast set from storage mob_data: SortingActionData[-1]
function skill:enemy/delay_action/append/search
data remove storage mob_data: SortingActionData[-1]
execute if data storage mob_data: SortingActionData[-1] run function skill:enemy/delay_action/act/sort/loop