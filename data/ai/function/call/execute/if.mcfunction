#> ai:call/execute/if
#条件を満たすまで順番に確認
data modify storage mob_data: Call set from storage mob_data: CallList[0]
function ai:call/execute/call

data remove storage mob_data: CallList[0]
execute if data storage mob_data: CallList[0] if data storage mob_data: {Success:0b} run function ai:call/execute/if
