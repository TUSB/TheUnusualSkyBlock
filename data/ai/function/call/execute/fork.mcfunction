#> ai:call/execute/fork
execute unless data storage mob_data: CallList[0].Execute if data storage mob_data: CallList[].Name run function ai:call/execute/all
execute if data storage mob_data: CallList[0].Execute if data storage mob_data: CallList[0].Condition[{Global:1b}] run function ai:call/execute/apply_global_condition
execute if data storage mob_data: CallList[{Execute:"Random"}] run function ai:call/execute/random
execute if data storage mob_data: CallList[{Execute:"If"}] run function ai:call/execute/if
