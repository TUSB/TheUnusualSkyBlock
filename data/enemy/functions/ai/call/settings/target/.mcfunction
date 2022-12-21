data modify storage mob_data: Target set from storage mob_data: Settings.Target
tp 0-0-0-0-2 @s

execute unless data storage mob_data: Target{Look:"Self"} as 0-0-0-0-2 run function enemy:ai/call/settings/target/fork
