#> ai:skill/delay_action/append/act
data modify storage mob_data: DelayAction append from storage mob_data: AddingAction
data modify storage mob_data: AddingAction.IsAdded set value true
