###Shift
data modify storage mob_data: CheckedAction append from storage mob_data: CheckingAction[-1]
data remove storage mob_data: CheckingAction[-1]

###削除予定の要素を削除
data remove storage mob_data: CheckedAction[{Delete:1b}]