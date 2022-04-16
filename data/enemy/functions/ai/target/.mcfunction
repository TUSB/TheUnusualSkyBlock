data modify storage mob_data: Target set from storage mob_data: AI.Turn[0].Target

execute if data storage mob_data: Target{Look:"Fixed"} run function enemy:ai/target/fixed
execute unless data storage mob_data: Target{Look:"Fixed"} as 0-0-0-0-2 run function enemy:ai/call/settings/target/fork
